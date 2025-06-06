SRC=sparse.md
CSS=style.css
DST=$(shell date +alexander-sapozhnikov--%Y%m%d-)$(shell git branch --show-current).pdf
MARGINS=-V margin-top=19 -V margin-left=19 -V margin-right=19 -V margin-bottom=0

$(DST): $(SRC) $(CSS)
	pandoc $(SRC) -t html --css $(CSS) $(MARGINS) -o $@

sparse.html: $(SRC)
	pandoc $(SRC) -o $@
