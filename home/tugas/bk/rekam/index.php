<?php

require ("../../../../advance.php");
isCookieSet();
if (isJobDefined ($_COOKIE['id'],'Catat Rekam Prilaku')){
    header ("location: error.php");
}
include ("control.php");




?>