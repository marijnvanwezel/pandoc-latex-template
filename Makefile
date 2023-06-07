TARGET=report.pdf
SOURCE=report.md

PANDOC_ARGS=--citeproc --template=koi.tex --listings 

$(TARGET): $(SOURCE)
	pandoc $(PANDOC_ARGS) -o $(TARGET) $(SOURCE)

watch:
	echo $(SOURCE) | entr make $(TARGET)

clean:
	rm -f $(TARGET)

.PHONY: clean watch