all: html pdf docx rtf

pdf: CV.pdf
CV.pdf: CV.html
	wkhtmltopdf CV.html CV.pdf

html: CV.html
CV.html: CV.css CV.md
	pandoc --standalone -H CV.css \
        --from markdown --to html \
        -o CV.html CV.md

docx: CV.docx
CV.docx: CV.md
	pandoc -s -S CV.md -o CV.docx

rtf: CV.rtf
CV.rtf: CV.md
	pandoc -s -S CV.md -o CV.rtf

publish: html pdf
	cp CV.html ../desperadoshi.github.io/index.html
	cp CV.pdf ../desperadoshi.github.io/
	cp -r ./font ../desperadoshi.github.io/

clean:
	rm CV.html
	rm CV.pdf
	rm CV.docx
	rm CV.rtf
