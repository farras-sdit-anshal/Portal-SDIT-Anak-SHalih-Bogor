<?php

require ("../../../advance.php");

if (isJobDefined ($_COOKIE['id'],'perpustakaan')){
    header ("location: error.php");
}
include ("control.php");




?>