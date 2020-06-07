#!/bin/bash

openocd -f board/st_nucleo_f4.cfg \
  -c "init" \
  -c "reset init" \
  -c "flash probe 0" \
  -c "flash info 0" \
  -c "flash write_image erase buildroot/stm32f429i-disco.bin 0x08000000" \
  -c "flash write_image erase buildroot/stm32f429-disco.dtb 0x08004000" \
  -c "flash write_image erase buildroot/xipImage 0x08008000" \
  -c "reset run" \
  -c "shutdown"
