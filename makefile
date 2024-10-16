# this ads wrappers to tables, use carefully!
# sed -e 's:^<table>$:<div class="tbl-wrap"><table>:g' -e 's:^</table>$:</table></div>:g'
#
# this converts markdown to html
# pandoc -o out.html -B cover.html -B history.html content.md --toc -N -c style.css --self-contained --metadata title="DOKUMENTUM CÍME" -V title:

.PHONY: all folders

all: dist/index.html dist/munkanaplo.html dist/h1/projektterv.html dist/h2/vizio-v0.2.html dist/h2/index.html dist/h2/vizio-v0.2.html dist/h2/vizio-v1.0.html

h1_md_files := $(wildcard h1/*.md)
h2_vizio_v0.2_md_files := $(wildcard h2/v0.2/*.md)
h2_vizio_v1.0_md_files := $(wildcard h2/v1.0/*.md)

folders:
	mkdir -p dist/h1
	mkdir -p dist/h2

dist/index.html: index.html folders
	cp index.html "$@"

dist/h2/index.html: index.html folders
	cp h2/index.html "$@"

dist/munkanaplo.html: folders munkanaplo/munkanaplo.html style.css
	pandoc -B munkanaplo/munkanaplo.html -c style.css /dev/null --self-contained --metadata title="Munkanapló" -V title: | sed -e 's:^<table>$$:<div class="tbl-wrap"><table>:g' -e 's:^</table>$$:</table></div>:g' > "$@"

dist/h1/projektterv.html: folders h1/cover.html h1/history.html style.css $(h1_md_files)
	pandoc -B h1/cover.html -B h1/history.html $(h1_md_files) --toc -N -c style.css --self-contained --metadata title="Projekt terv" -V title: | sed -e 's:^<table>$$:<div class="tbl-wrap"><table>:g' -e 's:^</table>$$:</table></div>:g' > "$@"

dist/h2/vizio-v0.2.html: folders h2/v0.2/cover.html h2/v0.2/history.html style.css $(h2_vizio_v0.2_md_files)
	pandoc -B h2/v0.2/cover.html -B h2/v0.2/history.html $(h2_vizio_v0.2_md_files) --toc -N -c style.css --self-contained --metadata title="Vízió" -V title: | sed -e 's:^<table>$$:<div class="tbl-wrap"><table>:g' -e 's:^</table>$$:</table></div>:g' > "$@"

dist/h2/vizio-v1.0.html: folders h2/v1.0/cover.html h2/v1.0/history.html style.css $(h2_vizio_v1.0_md_files)
	pandoc -B h2/v1.0/cover.html -B h2/v1.0/history.html $(h2_vizio_v1.0_md_files) --toc -N -c style.css --self-contained --metadata title="Vízió" -V title: | sed -e 's:^<table>$$:<div class="tbl-wrap"><table>:g' -e 's:^</table>$$:</table></div>:g' > "$@"
