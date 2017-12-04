# ProjetFranceCulture

Les trois scripts permettent de télécharger trois types de contenus différent:

* capt.sh

Permet de télécharger une émission d'un programme. Par exemple pour télécharger [l'émission du 12 août 2016 de l'Heure du documentaire](https://www.franceculture.fr/emissions/lheure-du-documentaire/la-derniere-fois), taper:

`./capt.sh https://www.franceculture.fr/emissions/lheure-du-documentaire/la-derniere-fois`

* LoopCulturePage.sh

Permet de télécharger une page entière d'un programme, tel qu'[ici](https://www.franceculture.fr/emissions/mauvais-genres/saison-29-08-2016-02-07-2017), [là](https://www.franceculture.fr/emissions/mauvais-genres/saison-29-08-2016-02-07-2017?p=2), ou [là](https://www.franceculture.fr/emissions/mauvais-genres/saison-29-08-2016-02-07-2017?p=3)

Ce qui donne, par exemple pour la troisième page de Mauvais genres:

`./LoopCulturePage.sh https://www.franceculture.fr/emissions/mauvais-genres/saison-29-08-2016-02-07-2017?p=2`

* EmissionEntiere.sh

Permet de télécharger une émission entière à partir de la première page de l'émission. Par exemple [ici](https://www.franceculture.fr/emissions/mauvais-genres/saison-29-08-2016-02-07-2017) pour une saison entière, ou [là](https://www.franceculture.fr/emissions/mauvais-genres) pour l'émission entière toute saisons confondues.

Ainsi, pour la saison 2016-2017 des Nuits de France Culture:

`./EmissionEntiere.sh https://www.franceculture.fr/emissions/les-nuits-de-france-culture/saison-29-08-2016-02-07-2017`

Pour la saison été 2016 de l'Heure du documentaire:

`./EmissionEntiere.sh https://www.franceculture.fr/emissions/lheure-du-documentaire/saison-04-07-2016-28-08-2016` 

Pour le programme entier LSD, la série documentaire:

`./EmissionEntiere.sh https://www.franceculture.fr/emissions/lsd-la-serie-documentaire`

Pour l'émission entière du Journal de la philo:

`./EmissionEntiere/sh https://www.franceculture.fr/emissions/le-journal-de-la-philo`
