#!/bin/bash  -x
for file in `ls *.txt`
do
        folderName=`echo $file | awk -F. '{print $1}'`;
        if [ -d $foldeName ];
        then
        rm -R $folderName;
        fi
        NOW=$(date +"%m%d%Y");
        echo $NOW; 
        newfileName="${folderName}-${NOW}"
        mkdir $folderName;
        #echo foler Created $folderName;
        cp $file $folderName/$newfileName;

done
