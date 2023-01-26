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

folderList = ["Elec", "FYKI", "GBio", "GC", "Info", "MAP", "Méca", "TroncCommun"]
target = "..\\SynthèseCompilé"
syntheseFolder = "..\\Synthèse"

for i in os.walk(syntheseFolder):
    if len(onlyPDF(i[-1])) > 0:
        for pdf in onlyPDF(i[-1]):
            shutil.copy(i[0] + "\\" + pdf, target + "\\" + pdf)
print("Synthèse(s) copiée(s)")
