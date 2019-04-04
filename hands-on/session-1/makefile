target = slides

template = default.beamer

beamer_options = 

.PHONY: clean cleanall

$(target).pdf: $(target).tex
	xelatex $<

$(target).tex: $(target).md
	pandoc $^ -t beamer --template $(template) -o $@ $(beamer_options)

clean:
	rm -f *.aux *.log *.snm *.synctex.gz *.toc *.vrb

cleanall:
	rm -f *.aux *.log *.snm *.synctex.gz *.toc *.vrb $(target).tex $(target).pdf
	