rm -Rf micropython/ports/esp32/boards/FRANZININHO_ESP32_S2_WROOM
mkdir micropython/ports/esp32/boards/FRANZININHO_ESP32_S2_WROOM 
mkdir build
cp boards/esp32/FRANZININHO_ESP32_S2_WROOM/* micropython/ports/esp32/boards/FRANZININHO_ESP32_S2_WROOM/.
cd micropython/ports/esp32
idf.py -D MICROPY_BOARD=FRANZININHO_ESP32_S2_WROOM -B ../../../build  fullclean
idf.py -D MICROPY_BOARD=FRANZININHO_ESP32_S2_WROOM -B ../../../build  build
