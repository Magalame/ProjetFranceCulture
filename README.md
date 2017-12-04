# ProjetFranceCultue

Les trois scripts permettent de t�l�charger trois types de contenus diff�rent:

* capt.sh
Permet de t�l�charger une �mission d'un programme. Par exemple pour t�l�charger [l'�mission du 12 ao�t 2016 de l'Heure du documentaire](https://www.franceculture.fr/emissions/lheure-du-documentaire/la-derniere-fois), taper:

`./capt.sh https://www.franceculture.fr/emissions/lheure-du-documentaire/la-derniere-fois`

* LoopCulturePage.sh
Permet de t�l�charger une page enti�re d'un programme, tel qu'[ici](https://www.franceculture.fr/emissions/mauvais-genres/saison-29-08-2016-02-07-2017), [l�](https://www.franceculture.fr/emissions/mauvais-genres/saison-29-08-2016-02-07-2017?p=2), ou [l�](https://www.franceculture.fr/emissions/mauvais-genres/saison-29-08-2016-02-07-2017?p=3)

Ce qui donne, par exemple pour la troisi�me page de La t�te au carr�:

`./LoopCulturePage.sh https://www.franceculture.fr/emissions/mauvais-genres/saison-29-08-2016-02-07-2017?p=2`

* EmissionEntiere.sh

Permet de t�l�charger une �mission enti�re � partir de la premi�re page de l'�mission. Par exemple [ici](https://www.franceculture.fr/emissions/mauvais-genres/saison-29-08-2016-02-07-2017) pour une saison enti�re, ou [l�](https://www.franceculture.fr/emissions/mauvais-genres) pour l'�mission enti�re toute saisons confondues.

Ainsi, pour la saison 2016-2017 des Nuits de France Inter:

`./EmissionEntiere.sh https://www.franceculture.fr/emissions/les-nuits-de-france-culture/saison-29-08-2016-02-07-2017`

Pour la saison �t� 2016 de l'Heure du documentaire:
`./EmissionEntiere.sh https://www.franceculture.fr/emissions/lheure-du-documentaire/saison-04-07-2016-28-08-2016` 

Pour le programme entier LSD, la s�rie documentaire:
`./EmissionEntiere.sh https://www.franceculture.fr/emissions/lsd-la-serie-documentaire`

Pour l'�mission enti�re du Journal de la philo:
`./EmissionEntiere/sh https://www.franceculture.fr/emissions/le-journal-de-la-philo`
