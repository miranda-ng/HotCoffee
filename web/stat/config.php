<?php

date_default_timezone_set("Europe/Minsk");

$files = Array("installer/MirandaHotCoffee_0.96.1.24291_x64.exe",
			   "installer/MirandaHotCoffee_0.96.1.24291_x86.exe");
			   
//учетная запись GA
$u="145576773293-j737asnd1hf020jnptslr6ugvpq1q57j@developer.gserviceaccount.com";
$p="Analytics-4fa03488e57f.p12";
$id="105131416";


//текущая дата
$currentdate=date("Ymd");
//дата, начиная с которой необходимо получить данные из GA для отчета. Формат YYYY-MM-DD
$datestart="2015-05-01";
//дата, заканчивая которой
//$datefinish="";
//или вычисляем дату - конец предыдущего месяца
$currentday=date("d");$currentmonth=date("m");$currentyear=date("Y");
$datefinish=date("Y-m-d",mktime(0,0,0,$currentmonth,$currentday,$currentyear));

//дата 3 месяца назад
$date3MonthStart=date("Y-m-d",mktime(0,0,0,$currentmonth-3,$currentday-1,$currentyear));
$date3MonthFinish=date("Y-m-d",mktime(0,0,0,$currentmonth,$currentday,$currentyear));

//дата месяц назад
$date1MonthStart=date("Y-m-d",mktime(0,0,0,$currentmonth-1,$currentday-1,$currentyear));
$date1MonthFinish=date("Y-m-d",mktime(0,0,0,$currentmonth,$currentday,$currentyear));

//количество стран
$countryRows=6;
//количество городов
$cityRows=20;


//csv-файл для отчета Посетители
$visitorsCSV="visitors.csv";
//csv-файл для отчета Посетители за посл. 3 месяца
$visitors3CSV="visitors_3.csv";
//csv-файл для отчета География по странам
$countryCSV="country.csv";
//csv-файл для отчета География по городам
$cityCSV="city.csv";
//файл со статистикой до начала использования GA. Формат: дата;посетители;просмотры
//$addFile="default.csv";
$addFile=false;

//полный пусть к директории со скриптом (слэш в конце обязателен!)
$path="/var/www/miranda-ng.org/htdocs/hotcoffee/stat/stat_files/"; ///////////////////////////////////////////////////////полный путь !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!