#!/bin/bash
find "$PWD" -type d |
sort |
while read dir; 
	do cd "${dir}";
	[ ! -f @md5Sum.md5 ] && echo "Processing " "${dir}" || echo "Skipped " "${dir}" " @md5Sum.md5 allready present" ;
	[ ! -f @md5Sum.md5 ] &&  md5sum * > @md5Sum.md5 ; chmod a=r "${dir}"/@md5Sum.md5 ;
done 
