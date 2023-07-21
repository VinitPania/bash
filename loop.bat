echo off
set  year=%DATE:~06,04%
set  month=%DATE:~03,02%
set num=%DATE:~00,02%

set rev_date=%year%-%month%-%num%
set tar_path=E:\devops\tar_fold
set files=(service.%rev_date%.log server.log.%rev_date% wildfly-stderr.%rev_date%.log  wildfly-stdout.%rev_date%.log)

set log_path=E:\devops\wildfly\wildfly-15.0.0.Final\standalone\log

IF not exist %tar_path%\%rev_date% (
    echo There is no folder so Creating the folder.
) ELSE (
    echo There is  folder so not Creating the folder.
)
for %%x in %files% do echo %log_path%\%%x



