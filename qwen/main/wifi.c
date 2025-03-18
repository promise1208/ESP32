#include "main.h"

/**
 * @brief 初始化 Wi-Fi 模块
 * 
 * 该函数负责初始化 Wi-Fi 模块，包括 NVS 存储、网络接口、事件循环、Wi-Fi 配置等。
 * 函数首先初始化 NVS 存储，然后初始化网络接口和事件循环，接着配置 Wi-Fi 并启动 Wi-Fi 模块。
 * 函数还注册了 Wi-Fi 事件和 IP 事件的处理函数。
 */
void wifi_init(void) 
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
    ESP_ERROR_CHECK(esp_event_handler_register(WIFI_EVENT, ESP_EVENT_ANY_ID, &wifi_event_handler, NULL));
    ESP_ERROR_CHECK(esp_event_handler_register(ESP_ERROR_CHECK(esp_wifi_set_config(WIFI_IF_STA, &wifi_config));

    ESP_ERROR_CHECK(esp_wifi_start());
        {
            .capable = true,
            .required = false
        },
    };

    // 配置 Wi-Fi 的 SSID 和密码
    memset(&wifi_config.sta.ssid, 0, sizeof(wifi_config.sta.ssid));
    memcpy(wifi_config.sta.ssid, WIFI_SSID, strlen(WIFI_SSID));

    memset(&wifi_config.sta.password, 0, sizeof(wifi_config.sta.password));
    memcpy(wifi_config.sta.password, WIFI_PASSWORD, strlen(WIFI_PASSWORD));

    // 设置 Wi-Fi 配置
    ESP_ERROR_CHECK(esp_wifi_set_config(WIFI_IF_STA, &wifi_config));

    ESP_ERROR_CHECK(esp_wifi_start());
}

/**
 * @brief Wi-Fi事件处理函数
 * 
 * 该函数用于处理Wi-Fi相关的事件，包括Wi-Fi STA模式的启动、连接、断开等事件，
 * 以及IP地址获取事件。根据事件类型和事件ID，执行相应的操作。
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
}