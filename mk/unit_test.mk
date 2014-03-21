QEMU_STM32 ?= ../qemu_stm32/arm-softmmu/qemu-system-arm


check:  
		$(MAKE) $(OUTDIR)/main.bin DEBUG_FLAGS=-DDEBUG
		$(QEMU_STM32) -nographic -M stm32-p103 \
		-gdb tcp::3333 -S \
		-serial stdio \
		-kernel $(OUTDIR)/main.bin -monitor null >/dev/null &
		@echo
		$(CROSS_COMPILE)gdb -batch -x $(UNIT_DIR)test-strlen.in
		@mv -f gdb.txt $(UNIT_DIR)test-strlen.txt
		@echo
		$(CROSS_COMPILE)gdb -batch -x $(UNIT_DIR)test-strcpy.in
		@mv -f gdb.txt $(UNIT_DIR)test-strcpy.txt
		@echo
		$(CROSS_COMPILE)gdb -batch -x $(UNIT_DIR)test-strcmp.in
		@mv -f gdb.txt $(UNIT_DIR)test-strcmp.txt
		@echo
		$(CROSS_COMPILE)gdb -batch -x $(UNIT_DIR)test-strncmp.in
		@mv -f gdb.txt $(UNIT_DIR)test-strncmp.txt
		@echo
		$(CROSS_COMPILE)gdb -batch -x $(UNIT_DIR)test-cmdtok.in
		@mv -f gdb.txt $(UNIT_DIR)test-cmdtok.txt
		@echo
		$(CROSS_COMPILE)gdb -batch -x $(UNIT_DIR)test-itoa.in
		@mv -f gdb.txt $(UNIT_DIR)test-itoa.txt
		@echo
		$(CROSS_COMPILE)gdb -batch -x $(UNIT_DIR)test-find_events.in
		@mv -f gdb.txt $(UNIT_DIR)test-find_events.txt
		@echo
		$(CROSS_COMPILE)gdb -batch -x $(UNIT_DIR)test-find_envvar.in
		@mv -f gdb.txt $(UNIT_DIR)test-find_envvar.txt
		@echo
		$(CROSS_COMPILE)gdb -batch -x $(UNIT_DIR)test-fill_arg.in
		@mv -f gdb.txt $(UNIT_DIR)test-fill_arg.txt
		@echo
		$(CROSS_COMPILE)gdb -batch -x $(UNIT_DIR)test-export_envvar.in
		@mv -f gdb.txt $(UNIT_DIR)test-export_envvar.txt
		@echo
		pkill -9 $(notdir $(QEMU_STM32))

