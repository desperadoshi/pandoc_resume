all: html pdf

pdf: CV_EN.pdf CV_CN.pdf
CV_EN.pdf: CV_EN.html
	wkhtmltopdf CV_EN.html CV_EN.pdf
CV_CN.pdf: CV_CN.html
	wkhtmltopdf CV_CN.html CV_CN.pdf

html: CV_EN.html CV_CN.html
CV_EN.html: CV_EN.css CV_EN.md
	pandoc --standalone -H CV_EN.css \
        --from markdown --to html \
        -o CV_EN.html CV_EN.md
CV_CN.html: CV_CN.css CV_CN.md
	pandoc --standalone -H CV_CN.css \
        --from markdown --to html \
        -o CV_CN.html CV_CN.md

publish: html pdf
	cp CV_EN.html ../desperadoshi.github.io/cv_en.html
	cp CV_EN.pdf ../desperadoshi.github.io/CV_EN.pdf
	cp CV_CN.html ../desperadoshi.github.io/cv_cn.html
	cp CV_CN.pdf ../desperadoshi.github.io/CV_CN.pdf
	cp CV_EN.html ../desperadoshi.github.io/index.html

clean:
	rm CV_EN.html CV_EN.pdf
	rm CV_CN.html CV_CN.pdf
