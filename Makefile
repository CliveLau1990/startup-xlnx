UBOOT_DIR ?= `pwd`/../u-boot-xlnx
UBOOT_FILE ?= $(UBOOT_DIR)/u-boot

INPUT_FILE ?= bootimage.bif
OUTPUT_FILE ?= boot.bin

PHONY := all
all:
	@rm -rf $(OUTPUT_FILE)
	@cp -af $(UBOOT_FILE) u-boot.elf
	bootgen -image $(INPUT_FILE) -o i $(OUTPUT_FILE) -w on

PHONY += clean
clean:
	rm -rf $(OUTPUT_FILE) u-boot.elf
