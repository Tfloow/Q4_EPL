LELEC1370=Synthese/Elec/LELEC1370_CircuitsetMesures/LELEC1370
LEPL1106=Synthese/TroncCommun/LEPL1106_SignauxetSystemes/Lepl1106
LINFO1123=Synthese/Info/LINFO1123_CalculabiliteLogiqueetComplexite/Linfo1123
LINFO1104=Synthese/Info/LINFO1104_ConceptsProgrammation/Linfo1104
CODELINFO1104=Synthese/Info/LINFO1104_ConceptsProgrammation/CodeLinfo1104




full: $(LEPL1106).pdf $(LELEC1370).pdf $(LINFO1123).pdf $(LINFO1104).pdf $(CODELINFO1104).pdf Sorting
	@echo -e "\e[1m\e[32mFinish\e[0m Full compiling and moving"

$(LEPL1106).pdf : $(LEPL1106).tex
	cd Synthese/TroncCommun/LEPL1106_SignauxetSystemes; ls; pdflatex -synctex=1 -interaction=nonstopmode $(subst .pdf,,$(lastword $(subst /, , $@))).tex
	@echo "Done with $@"

$(LELEC1370).pdf : $(LELEC1370).tex
	cd Synthese/Elec/LELEC1370_CircuitsetMesures; ls; pdflatex -synctex=1 -interaction=nonstopmode $(subst .pdf,,$(lastword $(subst /, , $@))).tex
	@echo "Done with $@"

$(LINFO1123).pdf : $(LINFO1123).tex
	cd Synthese/Info/LINFO1123_CalculabiliteLogiqueetComplexite; ls; pdflatex -synctex=1 -interaction=nonstopmode $(subst .pdf,,$(lastword $(subst /, , $@))).tex
	@echo "Done with $@"

$(LINFO1104).pdf : $(LINFO1104).tex
	cd Synthese/Info/LINFO1104_ConceptsProgrammation; ls; pdflatex -synctex=1 -interaction=nonstopmode $(subst .pdf,,$(lastword $(subst /, , $@))).tex
	@echo "Done with $@"

$(CODELINFO1104).pdf : $(CODELINFO1104).tex
	cd Synthese/Info/LINFO1104_ConceptsProgrammation; ls; pdflatex -synctex=1 -interaction=nonstopmode $(subst .pdf,,$(lastword $(subst /, , $@))).tex
	@echo "Done with $@"

Sorting : SyntheseCompilee/
	cd $^;ls; python $@.py