set(IDF_TARGET esp32s2)

set(SDKCONFIG_DEFAULTS
    boards/sdkconfig.base
    boards/sdkconfig.usb
    boards/FRANZININHO_ESP32_S2_WROOM/sdkconfig.board
)

set(MICROPY_FROZEN_MANIFEST ${MICROPY_BOARD_DIR}/manifest.py)
