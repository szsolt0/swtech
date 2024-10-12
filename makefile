# this ads wrappers to tables, use carefully!
# sed -e 's:^<table>$:<div class="tbl-wrap"><table>:g' -e 's:^</table>$:</table></div>:g'
#
# this converts markdown to html
# pandoc -o out.html -B cover.html -B history.html content.md --toc -N -c style.css --self-contained --metadata title="DOKUMENTUM CÍME" -V title:

.PHONY: all

all: dist/index.html dist/munkanaplo.html dist/h1/projektterv.html dist/h2/vizio.html

h1_md_files := $(wildcard h1/*.md)
h2_md_files := $(wildcard h2/*.md)

dist:
	mkdir dist

dist/h1: dist
	mkdir dist/h1

dist/h2: dist
	mkdir dist/h2

dist/index.html: index.html dist
	cp index.html "$@"

dist/munkanaplo.html: dist munkanaplo/munkanaplo.html style.css
	pandoc -B munkanaplo/munkanaplo.html -c style.css /dev/null --self-contained --metadata title="Munkanapló" -V title: | sed -e 's:^<table>$$:<div class="tbl-wrap"><table>:g' -e 's:^</table>$$:</table></div>:g' > "$@"

dist/h1/projektterv.html: dist/h1 h1/cover.html h1/history.html style.css $(h1_md_files)
	pandoc -B h1/cover.html -B h1/history.html $(h1_md_files) --toc -N -c style.css --self-contained --metadata title="Projekt terv" -V title: | sed -e 's:^<table>$$:<div class="tbl-wrap"><table>:g' -e 's:^</table>$$:</table></div>:g' > "$@"

dist/h2/vizio.html: dist/h2 h2/cover.html h2/history.html style.css $(h2_md_files)
	pandoc -B h2/cover.html -B h2/history.html $(h2_md_files) --toc -N -c style.css --self-contained --metadata title="Vízió" -V title: | sed -e 's:^<table>$$:<div class="tbl-wrap"><table>:g' -e 's:^</table>$$:</table></div>:g' > "$@"
