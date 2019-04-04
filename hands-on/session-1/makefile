target = slides

template = default.beamer

beamer_options = --slide-level=2 --highlight-style=breezedark 

.PHONY: clean cleanall

$(target).pdf: $(target).tex
	xelatex $<
	xelatex $<

$(target).tex: $(target).md makefile
	pandoc $< -t beamer --template $(template) -o $@ $(beamer_options)

clean:
	rm -f *.aux *.log *.snm *.synctex.gz *.toc *.vrb

cleanall:
	rm -f *.aux *.log *.snm *.synctex.gz *.toc *.vrb $(target).tex $(target).pdf
	
