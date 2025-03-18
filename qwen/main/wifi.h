#ifndef __WIFI_H__
#define __WIFI_H__

#include "main.h"


#define WIFI_SSID "20-1806"
#define WIFI_PASSWORD "15868854500"

void wifi_init(void);
void wifi_event_handler(void* arg, esp_event_base_t event_base, int32_t event_id, void* event_data);

#endif