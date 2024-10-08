# this ads wrappers to tables, use carefully!
# sed -e 's:^<table>$:<div class="tbl-wrap"><table>:g' -e 's:^</table>$:</table></div>:g'
#
# this converts markdown to html
# pandoc -o out.html -B cover.html -B history.html content.md --toc -N -c style.css --self-contained --metadata title="DOKUMENTUM CÍME" -V title:

.PHONY: all

all: dist/index.html dist/munkanaplo.html dist/h1/projektterv.html

h1_md_files := $(wildcard h1/*.md)

dist:
	mkdir dist

dist/h1: dist
	mkdir dist/h1

dist/index.html: index.html dist
	cp index.html "$@"

dist/munkanaplo.html: dist munkanaplo/munkanaplo.html style.css
	pandoc -B munkanaplo/munkanaplo.html -c style.css /dev/null --self-contained --metadata title="Munkanapló" -V title: | sed -e 's:^<table>$$:<div class="tbl-wrap"><table>:g' -e 's:^</table>$$:</table></div>:g' > "$@"

dist/h1/projektterv.html: dist/h1 h1/cover.html h1/history.html style.css $(h1_md_files)
	pandoc -B h1/cover.html -B h1/history.html $(h1_md_files) --toc -N -c style.css --self-contained --metadata title="Projekt terv" -V title: | sed -e 's:^<table>$$:<div class="tbl-wrap"><table>:g' -e 's:^</table>$$:</table></div>:g' > "$@"
