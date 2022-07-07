rm -Rf micropython/ports/esp32/boards/FRANZININHO_ESP32_S2_WROOM
rm -Rf micropython/ports/esp32/boards/FRANZININHO_ESP32_S2_WROOM
mkdir -p build/FRANZININHO_ESP32_S2_WROOM
mkdir -p build/FRANZININHO_WIFI_WROVER
cp -R boards/esp32/* micropython/ports/esp32/boards/
cd micropython/ports/esp32
idf.py -D MICROPY_BOARD=FRANZININHO_ESP32_S2_WROOM -B ../../../build/FRANZININHO_ESP32_S2_WROOM  fullclean
idf.py -D MICROPY_BOARD=FRANZININHO_ESP32_S2_WROOM -B ../../../build/FRANZININHO_ESP32_S2_WROOM  build
idf.py -D MICROPY_BOARD=FRANZININHO_WIFI_WROVER -B ../../../build/FRANZININHO_WIFI_WROVER  fullclean
idf.py -D MICROPY_BOARD=FRANZININHO_WIFI_WROVER -B ../../../build/FRANZININHO_WIFI_WROVER  build
