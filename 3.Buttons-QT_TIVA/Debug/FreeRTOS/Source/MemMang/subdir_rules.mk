################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
FreeRTOS/Source/MemMang/heap_2.obj: ../FreeRTOS/Source/MemMang/heap_2.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"/opt/ti/ccsv6/tools/compiler/arm_5.1.6/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="/opt/ti/ccsv6/tools/compiler/arm_5.1.6/include" --include_path="/home/gtt/workspaceTIVA/base-QT_TIVA" --include_path="/home/gtt/workspaceTIVA/base-QT_TIVA/FreeRTOS/Source/include" --include_path="/home/gtt/workspaceTIVA/base-QT_TIVA/FreeRTOS/Source/portable/CCS/ARM_CM4F" -g --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --define=TARGET_IS_BLIZZARD_RB1 --define=UART_BUFFERED --define=WANT_CMDLINE_HISTORY --define=WANT_FREERTOS_SUPPORT --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="FreeRTOS/Source/MemMang/heap_2.pp" --obj_directory="FreeRTOS/Source/MemMang" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '


