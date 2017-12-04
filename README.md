# ProjetFranceCultue

Les trois scripts permettent de t�l�charger trois types de contenus diff�rent:

* capt.sh
Permet de t�l�charger une �mission d'un programme. Par exemple pour t�l�charger [l'�mission du 3 d�cembre de L'Esprit public](https://www.franceculture.fr/emissions/lesprit-public/france-afrique-une-relation-en-reinvention-linsoumission-fait-elle-recette), taper:

`./capt.sh https://www.franceculture.fr/emissions/lesprit-public/france-afrique-une-relation-en-reinvention-linsoumission-fait-elle-recette`

* LoopCulturePage.sh
Permet de t�l�charger une page enti�re d'un programme, tel qu'[ici](https://www.franceinter.fr/emissions/la-tete-au-carre), [l�](https://www.franceinter.fr/emissions/la-tete-au-carre?p=2), ou [l�](https://www.franceinter.fr/emissions/la-tete-au-carre?p=3)

Ce qui donne, par exemple pour la troisi�me page de La t�te au carr�:

`./LoopCulturePage.sh https://www.franceinter.fr/emissions/la-tete-au-carre?p=3`

* EmissionEntiere.sh

Permet de t�l�charger une �mission enti�re � partir de la premi�re page de l'�mission. Par exemple [ici](https://www.franceinter.fr/emissions/la-tete-au-carre), [l�](https://www.franceinter.fr/emissions/la-marche-de-l-histoire), [l�](https://www.franceinter.fr/emissions/le-masque-et-la-plume), et [l�](https://www.franceinter.fr/emissions/la-bande-originale).

Ainsi, pour Le masque et la plume:

`./EmissionEntiere.sh https://www.franceinter.fr/emissions/le-masque-et-la-plume`
