@echo off 

echo %DATE%
set  year=%DATE:~06,04%
set  month=%DATE:~03,02%
set num=%DATE:~00,02%

set rev_date=%year%-%month%-%num%
set log_files=(service.%rev_date%.log  server.log.%rev_date%  wildfly-stderr.%rev_date%.log  wildfly-stdout.%rev_date%.log)

set log_path=E:\devops\wildfly\wildfly-15.0.0.Final\standalone\log
set tar_path=E:\devops\tar_fold
set path_7zip=C:\"Program Files"\7-Zip\7z.exe


IF not exist %tar_path%\%rev_date% (
    echo There is no folder so Creating the folder.
    MKDIR %tar_path%\%rev_date%
    for  %%x in %log_files% do MOVE %log_path%\%%x %tar_path%\%rev_date%
    %path_7zip% a -tzip %tar_path%\%rev_date%.zip %tar_path%\%rev_date%\*
) ELSE (
    echo Folder Exist so not Creating it.
)

