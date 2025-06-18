SRC=cv.md
CSS=style.css
DST=$(shell date +alexander-sapozhnikov--%Y%m%d-)$(shell git branch --show-current).pdf
MARGINS=-V margin-top=10 -V margin-left=14 -V margin-right=12 -V margin-bottom=0

$(DST): $(SRC) $(CSS)
	pandoc $(SRC) -t html --css $(CSS) $(MARGINS) -o $@

cv.html: $(SRC)
	pandoc $(SRC) -o $@
