SIMULATORMOD ?= modules/ICMC-Processor-Sim-Installer
MONTADOR ?= $(SIMULATORMOD)/bin/montador
SIM ?= $(SIMULATORMOD)/bin/sim

FULL_ASM = build/final.asm
MIF_OUT = build/game.mif

CHARMAP = res/charmap.mif
ASMFILES = $(wildcard src/*.asm) $(wildcard src/**/*.asm)

.PHONY: all clean run

all: $(MIF_OUT)

clean:
	@rm -rf build

run: $(MIF_OUT) $(CHARMAP)
	$(SIM) $(MIF_OUT) $(CHARMAP)

simulator:
	cd $(SIMULATORMOD) && sudo make

$(MIF_OUT): $(FULL_ASM)
	@mkdir -p build
	$(MONTADOR) $< $@

$(FULL_ASM): $(ASMFILES)
	@mkdir -p build
	cat $^ > $@
