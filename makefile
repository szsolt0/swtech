# this ads wrappers to tables, use carefully!
# sed -e 's:^<table>$:<div class="tbl-wrap"><table>:g' -e 's:^</table>$:</table></div>:g'
#
# this converts markdown to html
# pandoc -o out.html -B cover.html -B history.html content.md --toc -N -c style.css --self-contained --metadata title="DOKUMENTUM CÍME" -V title:

SHELL := /bin/bash
.PHONY: all folders

all: dist/index.html dist/munkanaplo.html dist/h1/projektterv.html dist/h2/vizio-v0.2.html dist/h2/index.html dist/h2/vizio-v0.2.html dist/h2/vizio-v1.0.html dist/h3/index.html dist/h3/srs-v1.0.html dist/h3/szotar.html dist/h4/index.html dist/h4/szotar.html dist/h4/jzbbg_ANAL1.0.html dist/h4/osztályok.png

h1_md_files := $(wildcard h1/*.md)
h2_vizio_v0.2_md_files := $(wildcard h2/v0.2/*.md)
h2_vizio_v1.0_md_files := $(wildcard h2/v1.0/*.md)
h3_srs_v1.0_md_files := $(wildcard h3/v1.0/*.md)
h4_analizis_v1.0_md_files := $(wildcard h4/analízis/v1.0/*.md)

folders:
	mkdir -p dist/h{1,2,3,4}

dist/index.html: index.html folders
	cp index.html "$@"

dist/munkanaplo.html: folders munkanaplo/munkanaplo.html style.css
	pandoc -B munkanaplo/munkanaplo.html -c style.css /dev/null --self-contained --metadata title="Munkanapló" -V title: | sed -e 's:^<table>$$:<div class="tbl-wrap"><table>:g' -e 's:^</table>$$:</table></div>:g' > "$@"

dist/h2/index.html: h2/index.html folders
	cp h2/index.html "$@"

dist/h3/index.html: h3/index.html folders
	cp h3/index.html "$@"

dist/h4/index.html: h4/index.html folders
	cp h4/index.html "$@"

dist/h4/osztályok.png: h4/analízis/v1.0/osztályok.png
	cp h4/analízis/v1.0/osztályok.png "$@"

dist/h1/projektterv.html: folders h1/cover.html h1/history.html style.css $(h1_md_files)
	pandoc -B h1/cover.html -B h1/history.html $(h1_md_files) --toc -N -c style.css --self-contained --metadata title="Projekt terv" -V title: | sed -e 's:^<table>$$:<div class="tbl-wrap"><table>:g' -e 's:^</table>$$:</table></div>:g' > "$@"

dist/h2/vizio-v0.2.html: folders h2/v0.2/cover.html h2/v0.2/history.html style.css $(h2_vizio_v0.2_md_files)
	pandoc -B h2/v0.2/cover.html -B h2/v0.2/history.html $(h2_vizio_v0.2_md_files) --toc -N -c style.css --self-contained --metadata title="Vízió" -V title: | sed -e 's:^<table>$$:<div class="tbl-wrap"><table>:g' -e 's:^</table>$$:</table></div>:g' > "$@"

dist/h2/vizio-v1.0.html: folders h2/v1.0/cover.html h2/v1.0/history.html style.css $(h2_vizio_v1.0_md_files)
	pandoc -B h2/v1.0/cover.html -B h2/v1.0/history.html $(h2_vizio_v1.0_md_files) --toc -N -c style.css --self-contained --metadata title="Vízió" -V title: | sed -e 's:^<table>$$:<div class="tbl-wrap"><table>:g' -e 's:^</table>$$:</table></div>:g' > "$@"

dist/h3/srs-v1.0.html: folders h3/v1.0/cover.html h3/v1.0/history.html style.css $(h3_vizio_v1.0_md_files)
	pandoc -B h3/v1.0/cover.html -B h3/v1.0/history.html $(h3_srs_v1.0_md_files) --toc -N -c style.css --self-contained --metadata title="Software Követelmény Specifikáció" -V title: | sed -e 's:^<table>$$:<div class="tbl-wrap"><table>:g' -e 's:^</table>$$:</table></div>:g' > "$@"

dist/h3/szotar.html: folders h3/szótár/cover.html style.css h3/szótár/szótár.md
	pandoc -B h3/szótár/cover.html -B h3/szótár/history.html h3/szótár/szótár.md -c style.css --self-contained --metadata title="Szótár" -V title: | sed -e 's:^<table>$$:<div class="tbl-wrap"><table>:g' -e 's:^</table>$$:</table></div>:g' > "$@"

dist/h4/jzbbg_ANAL1.0.html: folders h4/analízis/v1.0/cover.html h4/analízis/v1.0/history.html style.css $(h4_analizis_v1.0_md_files)
	pandoc -H <(echo '<style>'; cat style.css; echo '</style>') -B h4/analízis/v1.0/cover.html -B h4/analízis/v1.0/history.html $(h4_analizis_v1.0_md_files) --toc -N -s -M document-css=false --metadata title="Analízis Modell" -V title: | sed -e 's:^<table>$$:<div class="tbl-wrap"><table>:g' -e 's:^</table>$$:</table></div>:g' > "$@"

dist/h4/szotar.html: folders h4/szótár/cover.html style.css h4/szótár/szótár.md
	pandoc -B h4/szótár/cover.html -B h4/szótár/history.html h4/szótár/szótár.md -c style.css --self-contained --metadata title="Szótár" -V title: | sed -e 's:^<table>$$:<div class="tbl-wrap"><table>:g' -e 's:^</table>$$:</table></div>:g' > "$@"
