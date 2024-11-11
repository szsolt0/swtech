#!/bin/bash

# asd

shopt -s nullglob

genhtml() {
	local fname="$1"
	local title="$2"
	local path="$3"
	shift 3

	pandoc -o "dist/$fname" -B "$path/cover.html" -B "$path/history.html" $path/*.md --toc -N -c style.css --self-contained --metadata title="$title" -V title: | sed -e 's:^<table>$:<div class="tbl-wrap"><table>:g' -e 's:^</table>$:</table></div>:g'
}

mkdir -p dist/h{1..5}
cp index.html dist/

for i in {2..4}; do
	cp "h$i/index.html" "dist/h$i/"
done

# === H1 ===
genhtml h1/projektterv.html "Projektterv" h1

# === H2 ===
genhtml h2/vizio-v0.2.html "Vízió" h2/v0.2
genhtml h2/vizio-v1.0.html "Vízió" h2/v1.0

# === H3 ===
genhtml h3/srs-v1.0.html "Software Követelmény Specifikáció" h3/v1.0
genhtml h3/srs-v1.1.html "Software Követelmény Specifikáció" h3/v1.1
genhtml h3/szotar.html "Szótár" h3/szótár
cp h3/v1.1/pálya.png dist/h3/

# === H4 ===
genhtml h4/jzbbg_ANAL1.0.html "Analízis Modell" h4/analízis/v1.0
genhtml h4/szotar.html "Szótár" h4/szótár
cp h4/analízis/v1.0/alrendszerek.svg dist/h4/
cp h4/analízis/v1.0/osztályok.png dist/h4/

# === Munkanapló ===
pandoc -o "dist/munkanaplo.html" -B "munkanapló/cover.html" -B "munkanapló/history.html" -B "munkanapló/munkanapló.html" /dev/null --toc -N -c style.css --self-contained --metadata title="Munkanapló" -V title: | sed -e 's:^<table>$:<div class="tbl-wrap"><table>:g' -e 's:^</table>$:</table></div>:g'
