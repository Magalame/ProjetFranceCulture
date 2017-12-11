# ProjetFranceCulture

## Téléchargement

On commence par créer un dossier, sinon les fichiers vont se mélanger aux autres au même endroit:

`mkdir ProjetFranceCulture`

Puis on y rentre:

`cd ProjetFranceCulture`

Puis, pour télécharger le .tar (recommendé):

`wget https://raw.githubusercontent.com/Magalame/ProjetFranceCulture/master/ProjetFranceCulture.tar`

`tar -xvf ProjetFranceCulture.tar`

Rendez les exécutables:

`chmod +x capt.sh LoopInterPage.sh EmissionEntiereInter.sh`

Pour ceux qui le souhaite, il y a aussi un .zip, mais c'est moins pratique sous unix:

`wget https://raw.githubusercontent.com/Magalame/ProjetFranceCulture/master/ProjetFranceCulture.zip`


## Utilisation

Les trois scripts permettent de télécharger trois types de contenus différent:

### capt.sh

Permet de télécharger **une émission d'un programme**. Par exemple pour télécharger [l'émission du 12 août 2016 de l'Heure du documentaire](https://www.franceculture.fr/emissions/lheure-du-documentaire/la-derniere-fois), taper:

`./capt.sh https://www.franceculture.fr/emissions/lheure-du-documentaire/la-derniere-fois`

### LoopCulturePage.sh

Permet de télécharger **page entière d'un programme**, tel qu'[ici](https://www.franceculture.fr/emissions/mauvais-genres/saison-29-08-2016-02-07-2017), [là](https://www.franceculture.fr/emissions/mauvais-genres/saison-29-08-2016-02-07-2017?p=2), ou [là](https://www.franceculture.fr/emissions/mauvais-genres/saison-29-08-2016-02-07-2017?p=3)

Ce qui donne, par exemple pour la troisième page de Mauvais genres:

`./LoopCulturePage.sh https://www.franceculture.fr/emissions/mauvais-genres/saison-29-08-2016-02-07-2017?p=2`

### EmissionEntiereCulture.sh

Permet de télécharger **un programme ou un saison entière** à partir de la première page de l'émission. Par exemple [ici](https://www.franceculture.fr/emissions/mauvais-genres/saison-29-08-2016-02-07-2017) pour une *saison* entière, ou [là](https://www.franceculture.fr/emissions/mauvais-genres) pour le *programme entier*, toutes saisons confondues.

Ainsi, pour la *saison 2016-2017* des Nuits de France Culture:

`./EmissionEntiereCulture.sh https://www.franceculture.fr/emissions/les-nuits-de-france-culture/saison-29-08-2016-02-07-2017`

Pour la *saison été 2016* de l'Heure du documentaire:

`./EmissionEntiereCulture.sh https://www.franceculture.fr/emissions/lheure-du-documentaire/saison-04-07-2016-28-08-2016` 

Pour le *programme entier* "LSD, la série documentaire":

`./EmissionEntiereCulture.sh https://www.franceculture.fr/emissions/lsd-la-serie-documentaire`

Pour le *programme entier* du Journal de la philo:

`./EmissionEntiereCulture.sh https://www.franceculture.fr/emissions/le-journal-de-la-philo`


---------------------------------------


## Download

We start by creating a folder, as there are multiple files:

`mkdir ProjetFranceCulture`

`cd ProjetFranceCulture`

Then download the files:

`wget https://raw.githubusercontent.com/Magalame/ProjetFranceCulture/master/ProjetFranceCulture.tar`

`tar -xvf ProjetFranceCulture.tar`

Make them executable:

`chmod +x capt.sh LoopInterPage.sh EmissionEntiereInter.sh`

If you want it there is a zip version:

`wget https://raw.githubusercontent.com/Magalame/ProjetFranceCulture/master/ProjetFranceCulture.zip`

## Use

The three scripts allows you to download three different types of content:

### capt.sh

Downloads **one podcast** of a program. For example with [this one](https://www.franceculture.fr/emissions/lheure-du-documentaire/la-derniere-fois):

`./capt.sh https://www.franceculture.fr/emissions/lheure-du-documentaire/la-derniere-fois`

### LoopInterPage.sh

Downloads all the podcasts **on a same webpage**, for example [this one](https://www.franceculture.fr/emissions/mauvais-genres/saison-29-08-2016-02-07-2017?p=3): 

`./LoopCulturePage.sh https://www.franceculture.fr/emissions/mauvais-genres/saison-29-08-2016-02-07-2017?p=2`

### EmissionEntiereInter.sh

Downloads **the whole program from the url of the first page, or one season**. For example [here](https://www.franceculture.fr/emissions/mauvais-genres/saison-29-08-2016-02-07-2017) for an entire *season*, or [there](https://www.franceculture.fr/emissions/mauvais-genres) for the entire *program*, all seasons included.

Therefore, for the *2016-2017 seasons* of the Nuits de France Culture:

`./EmissionEntiereCulture.sh https://www.franceculture.fr/emissions/les-nuits-de-france-culture/saison-29-08-2016-02-07-2017`

For the *summer 2016 season* of l'Heure du documentaire:

`./EmissionEntiereCulture.sh https://www.franceculture.fr/emissions/lheure-du-documentaire/saison-04-07-2016-28-08-2016` 

For the *entire program* "LSD, la série documentaire":

`./EmissionEntiereCulture.sh https://www.franceculture.fr/emissions/lsd-la-serie-documentaire`

For the *entire program* of Journal de la philo:

`./EmissionEntiereCulture.sh https://www.franceculture.fr/emissions/le-journal-de-la-philo`
