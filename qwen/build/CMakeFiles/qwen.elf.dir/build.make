# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dawn/data/code/qwen

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dawn/data/code/qwen/build

# Include any dependencies generated for this target.
include CMakeFiles/qwen.elf.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/qwen.elf.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/qwen.elf.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/qwen.elf.dir/flags.make

project_elf_src_esp32.c:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/dawn/data/code/qwen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating project_elf_src_esp32.c"
	/usr/bin/cmake -E touch /home/dawn/data/code/qwen/build/project_elf_src_esp32.c

CMakeFiles/qwen.elf.dir/project_elf_src_esp32.c.obj: CMakeFiles/qwen.elf.dir/flags.make
CMakeFiles/qwen.elf.dir/project_elf_src_esp32.c.obj: project_elf_src_esp32.c
CMakeFiles/qwen.elf.dir/project_elf_src_esp32.c.obj: CMakeFiles/qwen.elf.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/dawn/data/code/qwen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/qwen.elf.dir/project_elf_src_esp32.c.obj"
	/home/dawn/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/qwen.elf.dir/project_elf_src_esp32.c.obj -MF CMakeFiles/qwen.elf.dir/project_elf_src_esp32.c.obj.d -o CMakeFiles/qwen.elf.dir/project_elf_src_esp32.c.obj -c /home/dawn/data/code/qwen/build/project_elf_src_esp32.c

CMakeFiles/qwen.elf.dir/project_elf_src_esp32.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/qwen.elf.dir/project_elf_src_esp32.c.i"
	/home/dawn/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dawn/data/code/qwen/build/project_elf_src_esp32.c > CMakeFiles/qwen.elf.dir/project_elf_src_esp32.c.i

CMakeFiles/qwen.elf.dir/project_elf_src_esp32.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/qwen.elf.dir/project_elf_src_esp32.c.s"
	/home/dawn/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dawn/data/code/qwen/build/project_elf_src_esp32.c -o CMakeFiles/qwen.elf.dir/project_elf_src_esp32.c.s

# Object files for target qwen.elf
qwen_elf_OBJECTS = \
"CMakeFiles/qwen.elf.dir/project_elf_src_esp32.c.obj"

# External object files for target qwen.elf
qwen_elf_EXTERNAL_OBJECTS =

qwen.elf: CMakeFiles/qwen.elf.dir/project_elf_src_esp32.c.obj
qwen.elf: CMakeFiles/qwen.elf.dir/build.make
qwen.elf: esp-idf/xtensa/libxtensa.a
qwen.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
qwen.elf: esp-idf/efuse/libefuse.a
qwen.elf: esp-idf/esp_mm/libesp_mm.a
qwen.elf: esp-idf/driver/libdriver.a
qwen.elf: esp-idf/esp_pm/libesp_pm.a
qwen.elf: esp-idf/mbedtls/libmbedtls.a
qwen.elf: esp-idf/esp_bootloader_format/libesp_bootloader_format.a
qwen.elf: esp-idf/esp_app_format/libesp_app_format.a
qwen.elf: esp-idf/bootloader_support/libbootloader_support.a
qwen.elf: esp-idf/esp_partition/libesp_partition.a
qwen.elf: esp-idf/app_update/libapp_update.a
qwen.elf: esp-idf/spi_flash/libspi_flash.a
qwen.elf: esp-idf/pthread/libpthread.a
qwen.elf: esp-idf/esp_system/libesp_system.a
qwen.elf: esp-idf/esp_rom/libesp_rom.a
qwen.elf: esp-idf/hal/libhal.a
qwen.elf: esp-idf/log/liblog.a
qwen.elf: esp-idf/heap/libheap.a
qwen.elf: esp-idf/soc/libsoc.a
qwen.elf: esp-idf/esp_hw_support/libesp_hw_support.a
qwen.elf: esp-idf/freertos/libfreertos.a
qwen.elf: esp-idf/newlib/libnewlib.a
qwen.elf: esp-idf/cxx/libcxx.a
qwen.elf: esp-idf/esp_common/libesp_common.a
qwen.elf: esp-idf/esp_timer/libesp_timer.a
qwen.elf: esp-idf/app_trace/libapp_trace.a
qwen.elf: esp-idf/esp_event/libesp_event.a
qwen.elf: esp-idf/nvs_flash/libnvs_flash.a
qwen.elf: esp-idf/esp_phy/libesp_phy.a
qwen.elf: esp-idf/vfs/libvfs.a
qwen.elf: esp-idf/lwip/liblwip.a
qwen.elf: esp-idf/esp_netif/libesp_netif.a
qwen.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
qwen.elf: esp-idf/esp_coex/libesp_coex.a
qwen.elf: esp-idf/esp_wifi/libesp_wifi.a
qwen.elf: esp-idf/unity/libunity.a
qwen.elf: esp-idf/cmock/libcmock.a
qwen.elf: esp-idf/console/libconsole.a
qwen.elf: esp-idf/http_parser/libhttp_parser.a
qwen.elf: esp-idf/esp-tls/libesp-tls.a
qwen.elf: esp-idf/esp_adc/libesp_adc.a
qwen.elf: esp-idf/esp_eth/libesp_eth.a
qwen.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
qwen.elf: esp-idf/esp_hid/libesp_hid.a
qwen.elf: esp-idf/tcp_transport/libtcp_transport.a
qwen.elf: esp-idf/esp_http_client/libesp_http_client.a
qwen.elf: esp-idf/esp_http_server/libesp_http_server.a
qwen.elf: esp-idf/esp_https_ota/libesp_https_ota.a
qwen.elf: esp-idf/esp_lcd/libesp_lcd.a
qwen.elf: esp-idf/protobuf-c/libprotobuf-c.a
qwen.elf: esp-idf/protocomm/libprotocomm.a
qwen.elf: esp-idf/esp_local_ctrl/libesp_local_ctrl.a
qwen.elf: esp-idf/espcoredump/libespcoredump.a
qwen.elf: esp-idf/wear_levelling/libwear_levelling.a
qwen.elf: esp-idf/sdmmc/libsdmmc.a
qwen.elf: esp-idf/fatfs/libfatfs.a
qwen.elf: esp-idf/json/libjson.a
qwen.elf: esp-idf/mqtt/libmqtt.a
qwen.elf: esp-idf/nvs_sec_provider/libnvs_sec_provider.a
qwen.elf: esp-idf/perfmon/libperfmon.a
qwen.elf: esp-idf/spiffs/libspiffs.a
qwen.elf: esp-idf/wifi_provisioning/libwifi_provisioning.a
qwen.elf: esp-idf/main/libmain.a
qwen.elf: esp-idf/app_trace/libapp_trace.a
qwen.elf: esp-idf/app_trace/libapp_trace.a
qwen.elf: esp-idf/cmock/libcmock.a
qwen.elf: esp-idf/unity/libunity.a
qwen.elf: esp-idf/esp_hid/libesp_hid.a
qwen.elf: esp-idf/esp_lcd/libesp_lcd.a
qwen.elf: esp-idf/esp_local_ctrl/libesp_local_ctrl.a
qwen.elf: esp-idf/espcoredump/libespcoredump.a
qwen.elf: esp-idf/fatfs/libfatfs.a
qwen.elf: esp-idf/wear_levelling/libwear_levelling.a
qwen.elf: esp-idf/sdmmc/libsdmmc.a
qwen.elf: esp-idf/mqtt/libmqtt.a
qwen.elf: esp-idf/nvs_sec_provider/libnvs_sec_provider.a
qwen.elf: esp-idf/perfmon/libperfmon.a
qwen.elf: esp-idf/spiffs/libspiffs.a
qwen.elf: esp-idf/wifi_provisioning/libwifi_provisioning.a
qwen.elf: esp-idf/protocomm/libprotocomm.a
qwen.elf: esp-idf/console/libconsole.a
qwen.elf: esp-idf/protobuf-c/libprotobuf-c.a
qwen.elf: esp-idf/json/libjson.a
qwen.elf: esp-idf/xtensa/libxtensa.a
qwen.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
qwen.elf: esp-idf/efuse/libefuse.a
qwen.elf: esp-idf/esp_mm/libesp_mm.a
qwen.elf: esp-idf/driver/libdriver.a
qwen.elf: esp-idf/esp_pm/libesp_pm.a
qwen.elf: esp-idf/mbedtls/libmbedtls.a
qwen.elf: esp-idf/esp_bootloader_format/libesp_bootloader_format.a
qwen.elf: esp-idf/esp_app_format/libesp_app_format.a
qwen.elf: esp-idf/bootloader_support/libbootloader_support.a
qwen.elf: esp-idf/esp_partition/libesp_partition.a
qwen.elf: esp-idf/app_update/libapp_update.a
qwen.elf: esp-idf/spi_flash/libspi_flash.a
qwen.elf: esp-idf/pthread/libpthread.a
qwen.elf: esp-idf/esp_system/libesp_system.a
qwen.elf: esp-idf/esp_rom/libesp_rom.a
qwen.elf: esp-idf/hal/libhal.a
qwen.elf: esp-idf/log/liblog.a
qwen.elf: esp-idf/heap/libheap.a
qwen.elf: esp-idf/soc/libsoc.a
qwen.elf: esp-idf/esp_hw_support/libesp_hw_support.a
qwen.elf: esp-idf/freertos/libfreertos.a
qwen.elf: esp-idf/newlib/libnewlib.a
qwen.elf: esp-idf/cxx/libcxx.a
qwen.elf: esp-idf/esp_common/libesp_common.a
qwen.elf: esp-idf/esp_timer/libesp_timer.a
qwen.elf: esp-idf/esp_event/libesp_event.a
qwen.elf: esp-idf/nvs_flash/libnvs_flash.a
qwen.elf: esp-idf/esp_phy/libesp_phy.a
qwen.elf: esp-idf/vfs/libvfs.a
qwen.elf: esp-idf/lwip/liblwip.a
qwen.elf: esp-idf/esp_netif/libesp_netif.a
qwen.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
qwen.elf: esp-idf/esp_coex/libesp_coex.a
qwen.elf: esp-idf/esp_wifi/libesp_wifi.a
qwen.elf: esp-idf/http_parser/libhttp_parser.a
qwen.elf: esp-idf/esp-tls/libesp-tls.a
qwen.elf: esp-idf/esp_adc/libesp_adc.a
qwen.elf: esp-idf/esp_eth/libesp_eth.a
qwen.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
qwen.elf: esp-idf/tcp_transport/libtcp_transport.a
qwen.elf: esp-idf/esp_http_client/libesp_http_client.a
qwen.elf: esp-idf/esp_http_server/libesp_http_server.a
qwen.elf: esp-idf/esp_https_ota/libesp_https_ota.a
qwen.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
qwen.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
qwen.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
qwen.elf: esp-idf/mbedtls/mbedtls/3rdparty/everest/libeverest.a
qwen.elf: esp-idf/mbedtls/mbedtls/3rdparty/p256-m/libp256m.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libcore.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libpp.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libwapi.a
qwen.elf: esp-idf/xtensa/libxtensa.a
qwen.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
qwen.elf: esp-idf/efuse/libefuse.a
qwen.elf: esp-idf/esp_mm/libesp_mm.a
qwen.elf: esp-idf/driver/libdriver.a
qwen.elf: esp-idf/esp_pm/libesp_pm.a
qwen.elf: esp-idf/mbedtls/libmbedtls.a
qwen.elf: esp-idf/esp_bootloader_format/libesp_bootloader_format.a
qwen.elf: esp-idf/esp_app_format/libesp_app_format.a
qwen.elf: esp-idf/bootloader_support/libbootloader_support.a
qwen.elf: esp-idf/esp_partition/libesp_partition.a
qwen.elf: esp-idf/app_update/libapp_update.a
qwen.elf: esp-idf/spi_flash/libspi_flash.a
qwen.elf: esp-idf/pthread/libpthread.a
qwen.elf: esp-idf/esp_system/libesp_system.a
qwen.elf: esp-idf/esp_rom/libesp_rom.a
qwen.elf: esp-idf/hal/libhal.a
qwen.elf: esp-idf/log/liblog.a
qwen.elf: esp-idf/heap/libheap.a
qwen.elf: esp-idf/soc/libsoc.a
qwen.elf: esp-idf/esp_hw_support/libesp_hw_support.a
qwen.elf: esp-idf/freertos/libfreertos.a
qwen.elf: esp-idf/newlib/libnewlib.a
qwen.elf: esp-idf/cxx/libcxx.a
qwen.elf: esp-idf/esp_common/libesp_common.a
qwen.elf: esp-idf/esp_timer/libesp_timer.a
qwen.elf: esp-idf/esp_event/libesp_event.a
qwen.elf: esp-idf/nvs_flash/libnvs_flash.a
qwen.elf: esp-idf/esp_phy/libesp_phy.a
qwen.elf: esp-idf/vfs/libvfs.a
qwen.elf: esp-idf/lwip/liblwip.a
qwen.elf: esp-idf/esp_netif/libesp_netif.a
qwen.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
qwen.elf: esp-idf/esp_coex/libesp_coex.a
qwen.elf: esp-idf/esp_wifi/libesp_wifi.a
qwen.elf: esp-idf/http_parser/libhttp_parser.a
qwen.elf: esp-idf/esp-tls/libesp-tls.a
qwen.elf: esp-idf/esp_adc/libesp_adc.a
qwen.elf: esp-idf/esp_eth/libesp_eth.a
qwen.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
qwen.elf: esp-idf/tcp_transport/libtcp_transport.a
qwen.elf: esp-idf/esp_http_client/libesp_http_client.a
qwen.elf: esp-idf/esp_http_server/libesp_http_server.a
qwen.elf: esp-idf/esp_https_ota/libesp_https_ota.a
qwen.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
qwen.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
qwen.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
qwen.elf: esp-idf/mbedtls/mbedtls/3rdparty/everest/libeverest.a
qwen.elf: esp-idf/mbedtls/mbedtls/3rdparty/p256-m/libp256m.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libcore.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libpp.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libwapi.a
qwen.elf: esp-idf/xtensa/libxtensa.a
qwen.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
qwen.elf: esp-idf/efuse/libefuse.a
qwen.elf: esp-idf/esp_mm/libesp_mm.a
qwen.elf: esp-idf/driver/libdriver.a
qwen.elf: esp-idf/esp_pm/libesp_pm.a
qwen.elf: esp-idf/mbedtls/libmbedtls.a
qwen.elf: esp-idf/esp_bootloader_format/libesp_bootloader_format.a
qwen.elf: esp-idf/esp_app_format/libesp_app_format.a
qwen.elf: esp-idf/bootloader_support/libbootloader_support.a
qwen.elf: esp-idf/esp_partition/libesp_partition.a
qwen.elf: esp-idf/app_update/libapp_update.a
qwen.elf: esp-idf/spi_flash/libspi_flash.a
qwen.elf: esp-idf/pthread/libpthread.a
qwen.elf: esp-idf/esp_system/libesp_system.a
qwen.elf: esp-idf/esp_rom/libesp_rom.a
qwen.elf: esp-idf/hal/libhal.a
qwen.elf: esp-idf/log/liblog.a
qwen.elf: esp-idf/heap/libheap.a
qwen.elf: esp-idf/soc/libsoc.a
qwen.elf: esp-idf/esp_hw_support/libesp_hw_support.a
qwen.elf: esp-idf/freertos/libfreertos.a
qwen.elf: esp-idf/newlib/libnewlib.a
qwen.elf: esp-idf/cxx/libcxx.a
qwen.elf: esp-idf/esp_common/libesp_common.a
qwen.elf: esp-idf/esp_timer/libesp_timer.a
qwen.elf: esp-idf/esp_event/libesp_event.a
qwen.elf: esp-idf/nvs_flash/libnvs_flash.a
qwen.elf: esp-idf/esp_phy/libesp_phy.a
qwen.elf: esp-idf/vfs/libvfs.a
qwen.elf: esp-idf/lwip/liblwip.a
qwen.elf: esp-idf/esp_netif/libesp_netif.a
qwen.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
qwen.elf: esp-idf/esp_coex/libesp_coex.a
qwen.elf: esp-idf/esp_wifi/libesp_wifi.a
qwen.elf: esp-idf/http_parser/libhttp_parser.a
qwen.elf: esp-idf/esp-tls/libesp-tls.a
qwen.elf: esp-idf/esp_adc/libesp_adc.a
qwen.elf: esp-idf/esp_eth/libesp_eth.a
qwen.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
qwen.elf: esp-idf/tcp_transport/libtcp_transport.a
qwen.elf: esp-idf/esp_http_client/libesp_http_client.a
qwen.elf: esp-idf/esp_http_server/libesp_http_server.a
qwen.elf: esp-idf/esp_https_ota/libesp_https_ota.a
qwen.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
qwen.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
qwen.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
qwen.elf: esp-idf/mbedtls/mbedtls/3rdparty/everest/libeverest.a
qwen.elf: esp-idf/mbedtls/mbedtls/3rdparty/p256-m/libp256m.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libcore.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libpp.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libwapi.a
qwen.elf: esp-idf/xtensa/libxtensa.a
qwen.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
qwen.elf: esp-idf/efuse/libefuse.a
qwen.elf: esp-idf/esp_mm/libesp_mm.a
qwen.elf: esp-idf/driver/libdriver.a
qwen.elf: esp-idf/esp_pm/libesp_pm.a
qwen.elf: esp-idf/mbedtls/libmbedtls.a
qwen.elf: esp-idf/esp_bootloader_format/libesp_bootloader_format.a
qwen.elf: esp-idf/esp_app_format/libesp_app_format.a
qwen.elf: esp-idf/bootloader_support/libbootloader_support.a
qwen.elf: esp-idf/esp_partition/libesp_partition.a
qwen.elf: esp-idf/app_update/libapp_update.a
qwen.elf: esp-idf/spi_flash/libspi_flash.a
qwen.elf: esp-idf/pthread/libpthread.a
qwen.elf: esp-idf/esp_system/libesp_system.a
qwen.elf: esp-idf/esp_rom/libesp_rom.a
qwen.elf: esp-idf/hal/libhal.a
qwen.elf: esp-idf/log/liblog.a
qwen.elf: esp-idf/heap/libheap.a
qwen.elf: esp-idf/soc/libsoc.a
qwen.elf: esp-idf/esp_hw_support/libesp_hw_support.a
qwen.elf: esp-idf/freertos/libfreertos.a
qwen.elf: esp-idf/newlib/libnewlib.a
qwen.elf: esp-idf/cxx/libcxx.a
qwen.elf: esp-idf/esp_common/libesp_common.a
qwen.elf: esp-idf/esp_timer/libesp_timer.a
qwen.elf: esp-idf/esp_event/libesp_event.a
qwen.elf: esp-idf/nvs_flash/libnvs_flash.a
qwen.elf: esp-idf/esp_phy/libesp_phy.a
qwen.elf: esp-idf/vfs/libvfs.a
qwen.elf: esp-idf/lwip/liblwip.a
qwen.elf: esp-idf/esp_netif/libesp_netif.a
qwen.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
qwen.elf: esp-idf/esp_coex/libesp_coex.a
qwen.elf: esp-idf/esp_wifi/libesp_wifi.a
qwen.elf: esp-idf/http_parser/libhttp_parser.a
qwen.elf: esp-idf/esp-tls/libesp-tls.a
qwen.elf: esp-idf/esp_adc/libesp_adc.a
qwen.elf: esp-idf/esp_eth/libesp_eth.a
qwen.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
qwen.elf: esp-idf/tcp_transport/libtcp_transport.a
qwen.elf: esp-idf/esp_http_client/libesp_http_client.a
qwen.elf: esp-idf/esp_http_server/libesp_http_server.a
qwen.elf: esp-idf/esp_https_ota/libesp_https_ota.a
qwen.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
qwen.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
qwen.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
qwen.elf: esp-idf/mbedtls/mbedtls/3rdparty/everest/libeverest.a
qwen.elf: esp-idf/mbedtls/mbedtls/3rdparty/p256-m/libp256m.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libcore.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libpp.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libwapi.a
qwen.elf: esp-idf/xtensa/libxtensa.a
qwen.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
qwen.elf: esp-idf/efuse/libefuse.a
qwen.elf: esp-idf/esp_mm/libesp_mm.a
qwen.elf: esp-idf/driver/libdriver.a
qwen.elf: esp-idf/esp_pm/libesp_pm.a
qwen.elf: esp-idf/mbedtls/libmbedtls.a
qwen.elf: esp-idf/esp_bootloader_format/libesp_bootloader_format.a
qwen.elf: esp-idf/esp_app_format/libesp_app_format.a
qwen.elf: esp-idf/bootloader_support/libbootloader_support.a
qwen.elf: esp-idf/esp_partition/libesp_partition.a
qwen.elf: esp-idf/app_update/libapp_update.a
qwen.elf: esp-idf/spi_flash/libspi_flash.a
qwen.elf: esp-idf/pthread/libpthread.a
qwen.elf: esp-idf/esp_system/libesp_system.a
qwen.elf: esp-idf/esp_rom/libesp_rom.a
qwen.elf: esp-idf/hal/libhal.a
qwen.elf: esp-idf/log/liblog.a
qwen.elf: esp-idf/heap/libheap.a
qwen.elf: esp-idf/soc/libsoc.a
qwen.elf: esp-idf/esp_hw_support/libesp_hw_support.a
qwen.elf: esp-idf/freertos/libfreertos.a
qwen.elf: esp-idf/newlib/libnewlib.a
qwen.elf: esp-idf/cxx/libcxx.a
qwen.elf: esp-idf/esp_common/libesp_common.a
qwen.elf: esp-idf/esp_timer/libesp_timer.a
qwen.elf: esp-idf/esp_event/libesp_event.a
qwen.elf: esp-idf/nvs_flash/libnvs_flash.a
qwen.elf: esp-idf/esp_phy/libesp_phy.a
qwen.elf: esp-idf/vfs/libvfs.a
qwen.elf: esp-idf/lwip/liblwip.a
qwen.elf: esp-idf/esp_netif/libesp_netif.a
qwen.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
qwen.elf: esp-idf/esp_coex/libesp_coex.a
qwen.elf: esp-idf/esp_wifi/libesp_wifi.a
qwen.elf: esp-idf/http_parser/libhttp_parser.a
qwen.elf: esp-idf/esp-tls/libesp-tls.a
qwen.elf: esp-idf/esp_adc/libesp_adc.a
qwen.elf: esp-idf/esp_eth/libesp_eth.a
qwen.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
qwen.elf: esp-idf/tcp_transport/libtcp_transport.a
qwen.elf: esp-idf/esp_http_client/libesp_http_client.a
qwen.elf: esp-idf/esp_http_server/libesp_http_server.a
qwen.elf: esp-idf/esp_https_ota/libesp_https_ota.a
qwen.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
qwen.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
qwen.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
qwen.elf: esp-idf/mbedtls/mbedtls/3rdparty/everest/libeverest.a
qwen.elf: esp-idf/mbedtls/mbedtls/3rdparty/p256-m/libp256m.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libcore.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libpp.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
qwen.elf: /home/dawn/data/esp-idf/components/esp_wifi/lib/esp32/libwapi.a
qwen.elf: /home/dawn/data/esp-idf/components/xtensa/esp32/libxt_hal.a
qwen.elf: esp-idf/pthread/libpthread.a
qwen.elf: esp-idf/newlib/libnewlib.a
qwen.elf: esp-idf/cxx/libcxx.a
qwen.elf: esp-idf/esp_phy/libesp_phy.a
qwen.elf: esp-idf/esp_phy/libesp_phy.a
qwen.elf: esp-idf/esp_system/ld/memory.ld
qwen.elf: esp-idf/esp_system/ld/sections.ld
qwen.elf: /home/dawn/data/esp-idf/components/esp_rom/esp32/ld/esp32.rom.ld
qwen.elf: /home/dawn/data/esp-idf/components/esp_rom/esp32/ld/esp32.rom.api.ld
qwen.elf: /home/dawn/data/esp-idf/components/esp_rom/esp32/ld/esp32.rom.libgcc.ld
qwen.elf: /home/dawn/data/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-data.ld
qwen.elf: /home/dawn/data/esp-idf/components/esp_rom/esp32/ld/esp32.rom.syscalls.ld
qwen.elf: /home/dawn/data/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-funcs.ld
qwen.elf: /home/dawn/data/esp-idf/components/soc/esp32/ld/esp32.peripherals.ld
qwen.elf: CMakeFiles/qwen.elf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/dawn/data/code/qwen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable qwen.elf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/qwen.elf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/qwen.elf.dir/build: qwen.elf
.PHONY : CMakeFiles/qwen.elf.dir/build

CMakeFiles/qwen.elf.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/qwen.elf.dir/cmake_clean.cmake
.PHONY : CMakeFiles/qwen.elf.dir/clean

CMakeFiles/qwen.elf.dir/depend: project_elf_src_esp32.c
	cd /home/dawn/data/code/qwen/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dawn/data/code/qwen /home/dawn/data/code/qwen /home/dawn/data/code/qwen/build /home/dawn/data/code/qwen/build /home/dawn/data/code/qwen/build/CMakeFiles/qwen.elf.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/qwen.elf.dir/depend

