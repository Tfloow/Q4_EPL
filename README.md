# Q4: Synthèse
<img src="https://github.com/Tfloow/Q4_EPL/actions/workflows/main.yml/badge.svg">

<details>
<summary><h2><b>Table des matières</b></h2></summary>
 &nbsp; &nbsp; • <a href="#getting-started-">Getting Started</a>
 <br>
&nbsp; &nbsp; • <a href="#contribuer-">Contribuer </a>
 <br>
&nbsp; &nbsp; • <a href="#répartition-">Répartition</a>
 <br>
&nbsp; &nbsp; • <a href="#un-problème">Un problème</a>
 <br>
&nbsp; &nbsp; • <a href="#les-liens-utiles-">Les liens utiles</a>
</details>


Salut, bienvenue à toi ! Ici, tu peux retrouver les synthèses écrites au cours du Q4 2023 par:

| Nom                                                |                     Nom                     |                          Nom                           |
| -------------------------------------------------- | :-----------------------------------------: | :----------------------------------------------------: |
| [Julien Monfils](https://github.com/JulienMonfils) | [Thomas Debelle](https://github.com/Tfloow) | [Speculoos](https://github.com/Springerk "l'homme sucré") |
| Nathan fockedey                                    |[Brieuc Dallemagne](https://github.com/BrieucDallemagne)|            [PurpleXP](https://github.com/PurpleXP)                         |

(Pour y être ajouté simplement contribue à une des synthèses (*oui oui, même si c'est une petite faute que tu as corrigé*))
### on cherche en priorité
- [ ] FYKI
- [ ] GBIO

Ce github **n'a pas vocation de remplacer le drive !** On l'utilise pour travailler au fil du quadri sur nos synthèses. Le but final est de pouvoir directement push nos synthèses sur le drive et ce de manière automatique. Nous avons créé un Github groupé pour *nous faciliter le travail* et pour *qu'on puisse toujours avoir un moyen de correction facile*.

## Getting Started <a name="GS"></a>
Pour pouvoir modifier facilement ce dossier et l'avoir en local, il te suffit de suivre ces étapes !
* Pour commencer il faut que tu aies: un compte github, git et python installé sur ta machine.

Si tu veux en apprendre d'avantage, pense à jeter un coup d'oeil au [Wiki](https://github.com/Tfloow/Q4_EPL/wiki) où tu trouveras plein d'info sur git, github, ...

Tu as tout ça ? parfait ! maintenant suit ces instructions:

<img src="https://github.com/Tfloow/randomshit/blob/main/Vid%C3%A9o%20sans%20titre%20%E2%80%90%20R%C3%A9alis%C3%A9e%20avec%20Clipchamp.gif" width="350">

1. Fork ce Github depuis cette page (regarde tout au-dessus à droite)
2. Copie l'adresse git de ton fork qui devrait être du style <https://github.com/nom/Q4_EPL.git> avec `nom` étant ton nom Github. **Attention n'oublie de rajouter `.git` à la fin**
3. Crée un dossier sur ton pc et lance Git depuis ce dossier (*donc ouvre le dossier dans le terminal*)
4. Exécute `git clone https://www.github.com/nom/Q4_EPL.git`
5. N'oublie d'être dans le dossier où se trouve le repo en faisant la commande `cd Q4_EPL`
6. Exécute `git remote add upstream https://www.github.com/Tfloow/Q4_EPL.git`


Voilà tu as accès à ce Github sur ta machine et pour le garder à jour exécute simplement `git pull upstream main`.

## Contribuer <a name="C"></a>

Pour y contribuer, il faut d'abord avoir réalisé [Getting Stared](#getting-started-).

Pour ajouter ta synthèse, tu dois:

1. Aller dans le dossier Synthèse et trouver le bon sous-dossier
2. Crée ton dossier de synthèse s'appelant par exemple `LEPLXXXX_Nom_Du_Cours` ou encore `LINFOXXXX_Nom_Du_Cours`. N'oublie pas d'y mettre une version compilé du PDF s'appelant `LEPLXXXX.pdf` ou encore `LELECXXXX.pdf` (merci de respecter ce standard la, ça nous aide à toutes les regrouper dans le dossier Synthèse Compilée)
3. Pour compiler facilement toutes les synthèse, regarde <a href="#Compilation-rapide">compilation rapide</a>.
4. Git commit et push sur ton fork
5. Fais un Pull request pour que ton commit se fasse sur ce Github
6. Attends et tadaaaa ta synthèse est dispo sur le Github

### Compilation Rapide
Si vous avez téléchargé pdflatex (via Miktex ou autre), vous pouvez utiliser la commande `make` dans ce répertoire pour:
1. Compiler tous les pdf
2. Déplacer tous les pdf dans le dossier `Synthèse compilée`
Pour que `make` compile *vos synthèses*, modifier le fichier `Makefile` en vous inspirant des commandes déjà présente.

## Répartition <a name="R"></a>

| Tronc commun   | Info  | Elec  |  MAP  | Méca  |  GC   | GBio  | FYKI  | Projet |
| -------------- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :----: |
| Julien Monfils |  TD   |  TD   |  Spé  |  JM   |       |       |  Spé  |        |
| Thomas Debelle |       |  JM   |  BD   |  NF   |       |       |       |        |
|                |       |  NF   |       |       |       |       |       |        |
|                |       |       |       |       |       |       |       |        |
|                |       |       |       |       |       |       |       |        |


## Un Problème
Si jamais tu as des difficultés à suivre les différentes étapes, regarde re-lis bien les différentes instructions à ton aise. (Git peut être intimidant pour les nouveaux utilisateurs) Si tu veux plus d'information sur les commandes utiles et/ou comprendre ce qu'elles font rends toi sur le [Wiki](https://github.com/Tfloow/Q4_EPL/wiki).
Si tu es bloqué ou que tu as rencontré un problème que tu ne sais pas résoudre, ouvre une "Issue" [ici](https://github.com/Tfloow/Q4_EPL/issues) pour que tout le monde puisse t'aider.
N'hésite pas à contacter directement les membres du projet pour toute autre question.

Si tu as un soucis pour **commit**, que le commit ne passe pas en _local_. Ouvre un ticket dans Issues! Et envoie le fichier **LogGit.txt** qui se trouve dans répertoire Q4_EPL. Merci !

## Les liens utiles <a name="L"></a>
1. [le Drive](https://uclouvain-my.sharepoint.com/:f:/r/personal/martin_brans_student_uclouvain_be/Documents/EPL-Drive?csf=1&web=1&e=fRialK "le Drive")
2. [le Github du Drive](https://github.com/Gp2mv3/Syntheses "la masterclass de nos prédecesseurs")
3. [les PDF](https://github.com/Tfloow/Q4_EPL/tree/main/SynthèseCompilée "Synthèse compilée")
4. [le Template](https://github.com/Tfloow/Q4_EPL/tree/main/Template "Template")
