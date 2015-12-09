#!/bin/bash

echo -n "FTP Server Name:"
read FTPSVRNAME

if [ ! -n "${FTPSVRNAME}" ];then echo "Plase Type FTP Server Name.";exit;fi

echo -n "FTP User Name:"
read FTPUSRNAME

if [ ! -n "${FTPUSRNAME}" ];then echo "Plase Type FTP Server Name.";exit;fi

echo -n "FTP User Pass:"
read FTPUSRPASS

if [ ! -n "${FTPUSRPASS}" ];then echo "Plase Type FTP Server Name.";exit;fi

echo -n "Download Server Path:"
read DLSVRPATH

wget -N -r --output-file=./log/${FTPSVRNAME}_`date +%Y%m%d`.log --user=${FTPUSRNAME} --password=${FTPUSRPASS} ftp://${FTPSVRNAME}/${DLSVRPATH}

exit
