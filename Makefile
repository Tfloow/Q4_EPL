full: Lepl1106 LELEC1370 Linfo1123 Linfo1104 Sorting
	echo "Finish Full compiling and moving"

Lepl1106 : Synthèse/TroncCommun/LEPL1106_SignauxetSystèmes
	cd $^; ls; pdflatex -synctex=1 -interaction=nonstopmode $@.tex
	echo "Done with $@"

LELEC1370 : Synthèse/Elec/LELEC1370_CircuitsetMesures
	cd $^; ls; pdflatex -synctex=1 -interaction=nonstopmode $@.tex
	echo "Done with $@"

Linfo1123 : Synthèse/Info/LINFO1123_CalculabilitéLogiqueetComplexité
	cd $^; ls; pdflatex -synctex=1 -interaction=nonstopmode $@.tex
	echo "Done with $@"

Linfo1104 : Synthèse/Info/LINFO1104_ConceptsProgrammation
	cd $^; ls; pdflatex -synctex=1 -interaction=nonstopmode $@.tex
	echo "Done with $@"

Sorting : SynthèseCompilée/
	cd $^;ls; python $@.py