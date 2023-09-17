paper.pdf: paper.tex plot-data.png
	pdflatex paper.tex

plot-%.png: %.dat plot.py
	./plot.py -i $*.dat -o $@

.phony: clean
clean:
	rm *.aux *.pdf *.png *.log

