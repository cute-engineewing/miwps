IVERILOG	= iverilog
RM	= rm -f

SRCS	= src/alu.v \
			src/pc.v

TARGET	= miwps

all: $(TARGET)

$(TARGET): $(SRCS)
	$(IVERILOG) -o $@ $^

clean:
	$(RM) $(TARGET)

re: clean all

.PHONY: all clean re
