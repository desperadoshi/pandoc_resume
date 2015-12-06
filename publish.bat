pandoc --standalone -H CV_EN.css --from markdown --to html -o CV_EN.html CV_EN.md
pandoc --standalone -H CV_CN.css --from markdown --to html -o CV_CN.html CV_CN.md

wkhtmltopdf CV_EN.html CV_EN.pdf
wkhtmltopdf CV_CN.html CV_CN.pdf

copy CV_EN.html ..\desperadoshi.github.io\cv_en.html
copy CV_EN.pdf ..\desperadoshi.github.io\CV_EN.pdf
copy CV_CN.html ..\desperadoshi.github.io\cv_cn.html
copy CV_CN.pdf ..\desperadoshi.github.io\CV_CN.pdf
copy CV_EN.html ..\desperadoshi.github.io\index.html