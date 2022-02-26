<?php
$path=$_GET["path"];
$d = 0;
$p = "stat_files/" . $path . ".visitors.csv";
$arr0 = explode("\n", file_get_contents($p));

foreach ($arr0 as $r)
{$d += explode(";", $r)[1];
}

echo($d);