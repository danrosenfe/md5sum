#!/bin/bash
#Código encontrado na resposta: https://askubuntu.com/a/327065 
find "$PWD" -type d |
sort |
while read dir; 
	do cd "${dir}";
	[ ! -f @md5Sum.md5 ] && echo "Processing " "${dir}" || echo "Skipped " "${dir}" " @md5Sum.md5 allready present" ;
	[ ! -f @md5Sum.md5 ] &&  md5sum * > @md5Sum.md5 ; chmod a=r "${dir}"/@md5Sum.md5 ;
done 
