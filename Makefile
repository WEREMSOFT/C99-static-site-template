OUT_D:=docs/
SRC_D:=src/

.PHONY: configure clean all

configure:
	mkdir $(OUT_D)

clean:
	rm -rf $(OUT_D)*

all:
	@echo Building site...
	@gcc -E -x c $(SRC_D)main.html | grep "^[^#]" > $(OUT_D)index.html
	@echo done.