#!/bin/bash

currentdir=$(pwd)

cd /tmp

if [ ! -d "work" ]; then
  mkdir work
fi
cd work
rm -f *
wget -q -O html_page $1

echo "Adresse recue par capt.sh:$1"

nom_pod=$(echo "$1" | cut -f 6 -d "/")

#echo "-----------------------------------------------------------------------"

#echo "Nom html podcast:" $nom_pod

echo "-----------------------------------------------------------------------"

cat html_page | grep "<title>" | awk -F '<title>' '{print $2}' | awk -F '</title>' '{print $1}' > nom_entier_pod

nom_entier_pod_var_pur=$(cat nom_entier_pod)

echo $nom_entier_pod_var_pur | sed 's/&#039;/'\''/g' | sed 's/[/]/-/g' | sed 's/[(?]//g' | sed 's/)//g' | sed 's/:/;/g' | sed 's/&quot;/"/g' > nom_entier_pod

nom_entier_pod_var=$(cat nom_entier_pod)

echo "Nom du podcast:" $nom_entier_pod_var

echo "-----------------------------------------------------------------------"

cat html_page | grep "<button" -A 20 | grep "$nom_entier_pod_var_pur" -A 5 -B 5 | grep ".mp3" | awk -F 'data-asset-source="' '{print $2}' | awk -F '"' '{print $1}' | head -n 1 > url
url_var=$(cat url)

echo "Url var:" $url_var
#echo "-----------------------------------------------------------------------"

nom_prog_html_var=$(echo "$1" | cut -f 5 -d "/")

#echo "Nom prog html: $nom_prog_html_var"
set=$(echo "$nom_prog_html_var\">")

echo "-----------------------------------------------------------------------"
cat html_page | grep "<button" -A 20 | grep "$nom_entier_pod_var_pur" -A 5 -B 5 | grep "data-asset-surtitle"  | head -n 1 | cut -d '"' -f 2 > nom_prog

nom_prog_pur=$(cat nom_prog)

echo $nom_prog_pur | sed 's/&#039;/'\''/g' | sed 's/[/]/-/g' | sed 's/[?(]//g' | sed 's/)//g' | sed 's/:/;/g' | sed 's/&quot;/"/g' > nom_prog

nom_prog=$(cat nom_prog)

echo "Nom du programme:" $nom_prog
echo "-----------------------------------------------------------------------"



date_html=$(cat html_page | grep -A 1 -a '<div class="heading-zone-title-date">' | tail -n 1) 
IFS="[<.>/]"; date=($date_html); unset IFS;
jour=${date[2]};mois=${date[3]};annee=${date[4]};

cd ../

nom_final="$nom_prog - $nom_entier_pod_var [$jour $mois $annee].mp3"
nom_final=$(echo $nom_final | sed 's/  / /g')

echo "Nom du fichier:" "$nom_final"

echo "-----------------------------------------------------------------------"

rm -R work

if [ "$2" = "-y" ]; then

    if [ ! -d "/mnt/d/Radio/$nom_prog" ]; then
        mkdir "/mnt/d/Radio/$nom_prog"
    fi

    cd "/mnt/d/Radio/$nom_prog"

    if [ -f "$nom_final" ]; then

        echo "Le fichier existe déjà sous le nom: $nom_final"
        exit

    fi

    wget -O "$nom_final" $url_var

fi

if [ "$2" != "-y" ]; then

    if [ -f "$nom_final" ]; then

        echo "Le fichier existe déjà sous le nom: $nom_final"
        exit

    fi

    wget -O "$nom_final" $url_var

fi

mv "$nom_final" "$currentdir"

#id3tool -t $nom_entier_pod_var -a $nom_prog -Y $annee $nom_final
#eyeD3 -2 --set-encoding=utf16-BE -t "$nom_entier_pod_var" -A "$nom_prog" -Y "$annee" "$nom_final" # à décommenter si vous voulez le tag et que vous avez eyeD3 installé
