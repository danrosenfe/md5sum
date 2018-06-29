#!/bin/bash
#Código encontrado na resposta: https://askubuntu.com/a/32706C
find "$PWD" -name @md5Sum.md5 |
sort |
while read file;
	do cd "${file%/*}";
		echo "diretorio: ""$PWD"
		md5sum -c @md5Sum.md5;
	done

