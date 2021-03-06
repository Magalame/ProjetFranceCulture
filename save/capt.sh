#!/bin/bash

if [ ! -d "work" ]; then
  mkdir work
fi
cd work
rm -f *
wget -q -O html_page $1

nom_pod=$(echo "$1" | cut -f 6 -d "/")

echo "-----------------------------------------------------------------------"

echo "Nom html podcast:" $nom_pod

echo "-----------------------------------------------------------------------"

cat html_page | grep '.mp3' | grep "$nom_pod" | awk -F 'data-diffusion-title="' '{print $2}' | awk -F'"' '{print $1}' | head -n 1 | sed 's/&#039;/'\''/g' | sed 's/[/]/-/g' | sed 's/[(?]//g' | sed 's/)//g' | sed 's/:/;/g' | sed 's/&quot;/"/g' | sed 's/\"//g' > nom_entier_pod

nom_entier_pod_var=$(cat nom_entier_pod)

echo "Nom entier du podcast:" $nom_entier_pod_var

echo "-----------------------------------------------------------------------"

cat html_page | grep ".mp3" | grep "$nom_pod" | sed 's/"/\n/g' | grep ".mp3" | head -n 1 > url
url_var=$(cat url)

echo "Url var:" $url_var

echo "-----------------------------------------------------------------------"
cat html_page | grep '.mp3' | grep "$nom_pod" | awk -F 'data-emission-title="' '{print $2}' | awk -F '"' '{print $1}' | head -n 1 | sed 's/&#039;/'\''/g' | sed 's/[/]/-/g' | sed 's/[?(]//g' | sed 's/)//g' | sed 's/:/;/g' | sed 's/&quot;/"/g' | sed 's/\"//g' > nom_prog
nom_prog=$(cat nom_prog)

echo "Nom du programme:" $nom_prog
echo "-----------------------------------------------------------------------"

cd ../

IFS="-"; arr=($1); unset IFS;
length=${#arr[@]}
annee=${arr[length-1]}
mois=${arr[length-2]}
jour=${arr[length-3]}

nom_final="$nom_prog - $nom_entier_pod_var [$jour $mois $annee].mp3"

echo "Nom du fichier:" "$nom_final"

echo "-----------------------------------------------------------------------"

rm -R work

if [ "$2" = "-y" ]; then

if [ ! -d "/media/pi/E0CEAE91CEAE6010/FranceInter/$nom_prog" ]; then
mkdir "/media/pi/E0CEAE91CEAE6010/FranceInter/$nom_prog"
fi

cd "/media/pi/E0CEAE91CEAE6010/FranceInter/$nom_prog"

if [ -f "$nom_final" ]; then

echo "Le fichier existe déjà sous le nom: $nom_final"
exit

fi

wget -nv -O "$nom_final" $url_var

fi

if [ "$2" != "-y" ]; then

if [ -f "$nom_final" ]; then

echo "Le fichier existe déjà sous le nom: $nom_final"
exit

fi

wget -nv -O "$nom_final" $url_var

fi