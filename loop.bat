echo off
set  year=%DATE:~06,04%
set  month=%DATE:~03,02%
set num=%DATE:~00,02%

set rev_date=%year%-%month%-%num%

set log_path=E:\devops\wildfly\wildfly-15.0.0.Final\standalone\log
for %%x in (service.%rev_date%.log server.log.%rev_date% wildfly-stderr.%rev_date%.log  wildfly-stdout.%rev_date%.log) do echo %log_path%\%%x



