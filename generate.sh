#!/bin/bash

shopt -s nullglob

genhtml() {
	local fname="$1"
	local title="$2"
	local path="$3"
	shift 3

	pandoc -t html -H style.html -B "$path/cover.html" -B "$path/history.html" $path/*.md --toc -N --metadata document-css=false --metadata title="$title" -V title: | \
	sed \
		-e 's:^<table style=.*>:<table>:' \
		-e 's:^<table>$:<div class="tbl-wrap"><table>:g' \
		-e 's:^</table>$:</table></div>:g' \
		-e 's:^<td><strong>:<th>:g' \
		-e 's:</strong></td>$:</th>:g' \
	> "dist/$fname"
}

mkdir -p dist/h{1..5}
cp index.html dist/

for i in {1..5}; do
	cp "h$i/index.html" "dist/h$i/"
done

# === H1 ===
genhtml h1/projektterv.html "Projektterv" h1/v0.1

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
genhtml h4/jzbbg_ANAL2.0.html "Analízis Modell" h4/analízis/v2.0
genhtml h4/jzbbg_RTERV1.0.html "Rendszertervezés" h4/rendszertervezés/v1.0
genhtml h4/szotar.html "Szótár" h4/szótár
cp h4/analízis/v1.0/*.{svg,png} dist/h4/
cp h4/analízis/v2.0/*.{svg,png} dist/h4/
cp h4/rendszertervezés/v1.0/*.{svg,png} dist/h4/

# === H5 ===
genhtml h5/teszt-terv-v1.0.html "Tesztelési Terv" h5/teszt-terv/v1.0
genhtml h5/ertekeles.html "Értékelési Táblázat" h5/értékelés
cp h5/értékelés/értékelés.pdf dist/h5/jzbbg-értékelés.pdf

# === Munkanapló ===
genhtml munkanaplo.html "Munkanapló" munkanapló
