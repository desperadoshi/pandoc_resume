# The Markdown Resume

Fork from [mszep/pandoc_resume](https://github.com/mszep/pandoc_resume).

## Modifications

+ `CSS`
+ `Makefile`
+ `Markdown` file
+ No ConText dependence to generate `PDF` output. Instead, use `wkhtmltopdf` to convert `html` file to `PDF`. In this way, `PDF` output has the same layout as `html` version.

## Instructions

    git clone https://github.com/desperadoshi/pandoc_resume.git
    cd pandoc_resume
    vim CV.md   #insert your own resume info
    make

## Requirements

+ [pandoc](http://pandoc.org/)
+ [wkhtmltopdf](http://wkhtmltopdf.org/)