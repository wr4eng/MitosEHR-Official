<?php
include_once("$srcdir/../interface/registry.php");
include_once("$srcdir/log.inc.php");

//function called to set the global session variable for patient id (pid) number
function setpid($new_pid) {
global $pid;

$_SESSION['pid']=$new_pid;
$pid=$new_pid;

newEvent("view",$_SESSION["authUser"],$_SESSION["authProvider"],1,$pid);

}
?>
