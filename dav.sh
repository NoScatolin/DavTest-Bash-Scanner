#!/bin/bash
echo "----- / / -----"
for diretorio in $(cat dir.txt);
do
resposta=$(davtest http://alvo.com$diretorio)
if echo "$resposta" | egrep '200' >/dev/null
then
echo "[+] ENCONTRADO: $diretorio"
fi
done
