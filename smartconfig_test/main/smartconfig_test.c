#include <stdio.h>
#include <string.h>
#include"esp_smartconfig.h"
#include"nvs_flash.h"
#include"esp_wifi.h"
#include"esp_event.h"
#include"esp_log.h"
#include"esp_netif.h"

#define TAG "samrtconfig"
void wifi_event_handler(void* arg, esp_event_base_t event_base, int32_t event_id, void* event_data);
/**
 * @brief 负责初始化Wi-Fi模块及相关组件。
 * 
 * 该函数完成以下主要任务：
 * 1. 初始化NVS存储，并处理可能的初始化失败情况。
 * 2. 初始化网络接口和事件循环，创建默认的Wi-Fi站点接口。
 * 3. 配置并启动Wi-Fi模块。
 * 4. 注册Wi-Fi事件和IP事件的处理函数。
 * 5. 启动SmartConfig功能以支持设备配网。
 * 
 * @details 
 * - 无参数。
 * - 无返回值。
 */
void app_main(void)
{
    ESP_LOGI(TAG, "Wi-Fi initialization started");

    // 初始化 NVS 存储，如果初始化失败（如没有空闲页或发现新版本），则擦除并重新初始化
    esp_err_t ret = nvs_flash_init();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) 
    {
        ESP_ERROR_CHECK(nvs_flash_erase());
        ret = nvs_flash_init();
    }
    ESP_ERROR_CHECK(ret);

    // 初始化网络接口和事件循环，并创建默认的 Wi-Fi 站点接口
    ESP_ERROR_CHECK(esp_netif_init());
    ESP_ERROR_CHECK(esp_event_loop_create_default());
    esp_netif_create_default_wifi_sta();

    // 初始化 Wi-Fi 模块，使用默认的初始化配置
    wifi_init_config_t wifi_cfg = WIFI_INIT_CONFIG_DEFAULT();
    ESP_ERROR_CHECK(esp_wifi_init(&wifi_cfg));

    // 注册 Wi-Fi 事件和 IP 事件的处理函数
   // 修复后的代码
    ESP_ERROR_CHECK(esp_wifi_set_config(WIFI_IF_STA, &wifi_cfg)); // 设置Wi-Fi配置
    ESP_ERROR_CHECK(esp_event_handler_register(WIFI_EVENT, ESP_EVENT_ANY_ID, &wifi_event_handler, NULL)); // 注册Wi-Fi事件处理函数
    ESP_ERROR_CHECK(esp_event_handler_register(SC_EVENT, ESP_EVENT_ANY_ID, &wifi_event_handler, NULL)); // 注册SmartConfig事件处理函数

    ESP_ERROR_CHECK(esp_wifi_set_config(WIFI_IF_STA, &wifi_cfg));// 设置Wi-Fi配置
    ESP_ERROR_CHECK(esp_wifi_start());// 启动Wi-Fi

    esp_smartconfig_set_type(SC_TYPE_ESPTOUCH); // 设置SmartConfig类型为ESPTOUCH
    smartconfig_start_config_t cfg = SMARTCONFIG_START_CONFIG_DEFAULT();// 创建一个SmartConfig启动配置结构体
    esp_smartconfig_start(&cfg);        // 启动SmartConfig
}

/**
 * @brief Wi-Fi事件处理函数
 * 
 * 该函数用于处理Wi-Fi相关的事件，包括Wi-Fi STA模式的启动、连接、断开等事件，
 * 以及IP地址获取事件。根据事件类型和事件ID，执行相应的操作。SMARTCONFIG_START_CONFIG_DEFAULT（）;
 * 
 * @param arg 用户自定义参数，通常为NULL
 * @param event_base 事件的基础类型，用于区分不同的事件源
 * @param event_id 事件的ID，用于区分同一事件源下的不同事件
 * @param event_data 事件相关的数据，具体内容取决于事件类型
 * @return void
 */
void wifi_event_handler(void* arg, esp_event_base_t event_base, int32_t event_id, void* event_data) 
{
   // 处理Wi-Fi事件
   if (event_base == WIFI_EVENT) 
   {
      switch (event_id) 
      {
        // Wi-Fi STA模式启动事件
        case WIFI_EVENT_STA_START:
            ESP_LOGI(TAG, "Wi-Fi STA started");
            esp_wifi_connect();  // 启动Wi-Fi连接
            break;
        // Wi-Fi STA模式连接成功事件
        case WIFI_EVENT_STA_CONNECTED:
            ESP_LOGI(TAG, "WiFi Connected to AP");
            break;
        // Wi-Fi STA模式断开连接事件
        case WIFI_EVENT_STA_DISCONNECTED:
            ESP_LOGI(TAG, "WiFi Disconnected from AP");
            esp_wifi_connect();  // 尝试重新连接Wi-Fi
            break;
        default:
            break;
      }
   }
   // 处理IP事件
   else if (event_base == IP_EVENT) 
   {
      switch (event_id) 
      {
        // Wi-Fi STA模式获取IP地址事件
        case IP_EVENT_STA_GOT_IP:
            ESP_LOGI(TAG, "WiFi got IP");
            break;
      }
   }
   // 处理SmartConfig事件
   else if (event_base == SC_EVENT) 
   {
      switch (event_id) 
      {
        //SmartConfig扫描事件
        case SC_EVENT_SCAN_DONE:
            ESP_LOGI(TAG, "SmartConfig scan done");
            break;
        // SmartConfig开始事件
        case SC_EVENT_GOT_SSID_PSWD:
        {
            smartconfig_event_got_ssid_pswd_t* sc_data = (smartconfig_event_got_ssid_pswd_t*)event_data;// 获取SmartConfig数据
            wifi_config_t wifi_config = {0};// 创建一个空的Wi-Fi配置结构体
            memset(&wifi_config, 0, sizeof(wifi_config));// 清空Wi-Fi配置结构体
            snprintf((char*)wifi_config.sta.ssid, sizeof(wifi_config.sta.ssid), "%s", (char*)sc_data->ssid);// 将SmartConfig数据中的SSID和密码复制到Wi-Fi配置结构体中
            snprintf((char*)wifi_config.sta.password, sizeof(wifi_config.sta.password), "%s", (char*)sc_data->password);// 将SmartConfig数据中的BSSID设置到Wi-Fi配置结构体中
            wifi_config.sta.bssid_set = sc_data->bssid_set;// 设置BSSID
            if (wifi_config.sta.bssid_set)// 如果BSSID被设置
            {
                memcpy(wifi_config.sta.bssid, sc_data->bssid, 6);
            }
            esp_wifi_disconnect();
            esp_wifi_set_config(WIFI_IF_STA, &wifi_config); // 设置Wi-Fi配置
            esp_wifi_connect();
            ESP_LOGI(TAG, "SmartConfig got SSID and password");
            break;
        }
        // SmartConfig完成事件
        case SC_EVENT_SEND_ACK_DONE:
            ESP_LOGI(TAG, "SmartConfig send ACK done");
        break;

        default: 
        break;
      }
   }
}