#!/bin/bash

# COLORS #############
green="\\033[1;32m"
red="\\033[1;31m"
basic="\\033[0;39m"
bblue="\\033[1;34m"
blue="\\033[0;34m"
# ###################
ask() {
  local name=$1
  local class=$2
  echo -e "$blue Le document $1 a été identifier comme étant de niveau $2. [Oui/non]$basic"
  read -r -p "" response
  case $response in
       [nN]|[nN][Oo][nN] )
         echo -e "$red Renseigner le niveau correct de l'élève ([CP|CE1|CE2|CM1|CM2])"
         local checker=""
         while read -r -p "" response && [[ -z "$checker" ]] 
         do
           case $response in
            [Cc][Pp])
              class=CP
              checker=$class
              echo -e "$blue Le fichier est de niveau $class"
              ;;
            [Cc][Ee][1])
              class=CE1
              checker=$class
              echo -e "$blue Le fichier est de niveau $class"
              ;;
            [Cc][Ee][2])
              class=CE2
              checker=$class
              echo -e "$blue Le fichier est de niveau $class"
              ;;
            [Cc][Mm][1])
              class=CM1
              checker=$class
              echo -e "$blue Le fichier est de niveau $class"
              ;;
            [Cc][Mm][2])
              class=CM2
              checker=$class
              echo -e "$blue Le fichier est de niveau $class"
              ;;
            *)
              checker=""
              class=
              echo -e "$red Excusez nous, nous n'avons pas compris votre demande... Veillez enter une classe correct. [CP|CE1|CE2|CM1|CM2]"
              ;;
            esac
          done
      *)
      ;; 
  esac
}