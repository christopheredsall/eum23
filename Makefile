PANDOC=pandoc

all: talk.html

%.html: %.md custom.css
	$(PANDOC) \
		--to=revealjs \
		--variable revealjs-url="reveal.js" \
		--variable theme=black \
		--css="./custom.css" \
		--standalone \
		--output=$@ $<

