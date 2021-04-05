AS=lc3as
ASM_SRC_FILES = $(shell find . -name "*.asm")
ASM_OBJ_FILES:=$(notdir $(ASM_SRC_FILES:%.asm=%.obj))

all: $(ASM_OBJ_FILES)

$(ASM_OBJ_FILES): $(ASM_SRC_FILES)

%.obj: %.asm
	@echo "Assembling $<"
	@$(AS) $<

clean:
	rm -f *.obj *.sym
