<?php
include("config.php");
include("gapi.class.php");

$filter_t = "pagePath =@ /hotcoffee/";

$files = Array("installer/MirandaHotCoffee_0.96.1.24291_x64.exe",
			   "installer/MirandaHotCoffee_0.96.1.24291_x86.exe");

foreach ($files as $k=>$v)
{
	$c_path = $path . $v . ".";
	$filter = $filter_t . $v;
	
	$ga = new gapi($u, $p);
	$ga->requestReportData($id, array('month','year'), array('visitors','pageviews'), 'year', $filter, $datestart, $datefinish, 1, 100000);
	$output = "";
	if ($addFile) {
		$add = file_get_contents($c_path . $addFile);
		$output .= trim($add) . "\n";
	}
	foreach ($ga->getResults() as $result) {
		$m         = $result; //месяц год
		$visitors  = $result->getVisitors(); //посетители
		$pageviews = $result->getPageviews(); //просмотры
		$m         = str_replace(" ", ".", $m);
		$output .= ($m . ";" . $visitors . ";" . $pageviews . "\n");
	}
	$fp = fopen($c_path . $visitorsCSV, "w");
	fputs($fp, trim($output));
	fclose($fp);
	$ga->requestReportData($id, array(
		'day',
		'month',
		'year'
	), array(
		'visitors',
		'visits',
		'pageviews'
	), array(
		'year',
		'month',
		'day'
	), $filter, $date3MonthStart, $date3MonthFinish, 1, 100000);
	$output = "";
	foreach ($ga->getResults() as $result) {
		$d         = $result; //день
		$visitors  = $result->getVisitors(); //посетители
		$pageviews = $result->getPageviews(); //просмотры
		$visits    = $result->getVisits(); //посещения
		$d         = str_replace(" ", ".", $d);
		$output .= $d . ";" . $visitors . ";" . $pageviews . ";" . $visits . "\n";
	}
	$fp = fopen($c_path . $visitors3CSV, "w");
	fputs($fp, trim($output));
	fclose($fp);
	$ga->requestReportData($id, array(
		'country'
	), array(
		'visits'
	), '-visits', $filter, $date1MonthStart, $date1MonthFinish, 1, $countryRows);
	$output       = "";
	$total_visits = $ga->getVisits();
	foreach ($ga->getResults() as $result) {
		$country = $result->getCountry(); //страна
		$visits  = $result->getVisits(); //кол-во посещений
		$country = str_replace("(not set)", "не определено", $country);
		$output .= $country . ";" . $visits . "\n";
	}
	$fp = fopen($c_path . $countryCSV, "w");
	fputs($fp, trim($output));
	fclose($fp);
	$ga->requestReportData($id, array(
		'city'
	), array(
		'visits'
	), '-visits', $filter, $date1MonthStart, $date1MonthFinish, 1, $cityRows);
	$output       = "";
	$total_visits = $ga->getVisits();
	foreach ($ga->getResults() as $result) {
		$city   = $result->getCity(); //страна
		$visits = $result->getVisits(); //кол-во посещений
		$city   = str_replace("(not set)", "не определено", $city);
		$output .= $city . ";" . $visits . "\n";
	}
	$fp = fopen($c_path . $cityCSV, "w");
	fputs($fp, trim($output));
	fclose($fp);
}