import os
import shutil

def onlyPDF(elemList):
    """
    :param elemList: a List of element in a directory
    :return: only the pdf Document
    """
    good = []
    for elem in elemList:
        if(elem.split(".")[-1].lower() == "pdf"):
            good.append(elem)
    return good

folderList = ["Elec", "FYKI", "GBio", "GC", "Info", "MAP", "Méca", "TroncCommun"] # name of different folder
target = "..\\SynthèseCompilée" # were to put the pdf
syntheseFolder = "..\\Synthèse" # from where they should be

for i in os.walk(syntheseFolder): # going through all the folder and files of the Synthèse folder
    if len(onlyPDF(i[-1])) > 0:
        for pdf in onlyPDF(i[-1]):
            shutil.copy(i[0] + "\\" + pdf, target + "\\" + pdf) # copying the pdf to the target folder
print("Synthèse(s) copiée(s)")
