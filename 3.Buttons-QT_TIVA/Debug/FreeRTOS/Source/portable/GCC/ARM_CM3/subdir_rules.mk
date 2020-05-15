################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
FreeRTOS/Source/portable/GCC/ARM_CM3/port.obj: ../FreeRTOS/Source/portable/GCC/ARM_CM3/port.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"/home/dte/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="/home/dte/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" --include_path="/home/dte/workspaceSE-GTT/base-QT_TIVA" --include_path="/home/dte/workspaceSE-GTT/base-QT_TIVA/FreeRTOS/Source/include" --include_path="/home/dte/workspaceSE-GTT/base-QT_TIVA/FreeRTOS/Source/portable/CCS/ARM_CM4F" -g --gcc --define=ccs="ccs" --define=PART_TM4C123GH6PM --define=TARGET_IS_BLIZZARD_RB1 --define=UART_BUFFERED --define=WANT_CMDLINE_HISTORY --define=WANT_FREERTOS_SUPPORT --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="FreeRTOS/Source/portable/GCC/ARM_CM3/port.pp" --obj_directory="FreeRTOS/Source/portable/GCC/ARM_CM3" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '


