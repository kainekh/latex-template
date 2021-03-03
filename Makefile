TARGET =

all:
	pdflatex $(TARGET)
	biber $(TARGET)
	pdflatex $(TARGET)
	pdflatex $(TARGET)

clean:
	rm *.aux *.log *.pdf *.bbl *.bcf *.blg *.xml *.toc *.nav *.out *.snm

final:
	pdflatex $(TARGET)
	biber $(TARGET)
	pdflatex $(TARGET)
	pdflatex $(TARGET)
	latex $(TARGET)
	biber $(TARGET)
	latex $(TARGET)
	latex $(TARGET)
	rm *.aux *.log *.bbl *.bcf *.blg *.xml *.toc *.nav *.out *.snm
