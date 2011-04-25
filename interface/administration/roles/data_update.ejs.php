<?php
//--------------------------------------------------------------------------------------------------------------------------
// data_update.ejs.php / Roles
// v0.0.2
// Under GPLv3 License
// Integrated by: Ernesto Rodriguez ~ MitosEHR
// Remember, this file is called via the Framework Store, this is the AJAX thing.
//--------------------------------------------------------------------------------------------------------------------------
session_name ( "MitosEHR" );
session_start();

include_once("../../../library/dbHelper/dbHelper.inc.php");
include_once("../../../library/I18n/I18n.inc.php");
require_once("../../../repository/dataExchange/dataExchange.inc.php");

//------------------------------------------
// Database class instance
//------------------------------------------
$mitos_db = new dbHelper();

// *****************************************************************************************
// Parce the data generated by EXTJS witch is JSON
// *****************************************************************************************
$data = json_decode ($_POST['row'], true);
switch ($_GET['task']) {
	// *************************************************************************************
	// Code used to update role
	// *************************************************************************************
	case "update_role":
		// *************************************************************************************
		// Validate and pass the POST variables to an array
		// This is the moment to validate the entered values from the user
		// although Sencha EXTJS make good validation, we could check again 
		// just in case 
		// *************************************************************************************
		$row['id'] = dataEncode($data['id']);
		$row['role_name'] = dataEncode($data['role_name']);
		// *************************************************************************************
		// Finally that validated POST variables is inserted to the database
		// This one make the JOB of two, if it has an ID key run the UPDATE statement
		// if not run the INSERT stament
		// *************************************************************************************
		$mitos_db->setSQL("UPDATE acl_roles 
						 	  SET role_name = '" . $row['role_name'] . "' " . "
					   		WHERE id= '" . $row['id'] . "'");
		$mitos_db->execLog();
		echo "{ success: true }";
	break;
	// *****************************************************************************************
	// Code used to update role_perms and permisions
	// *****************************************************************************************
	case "update_role_perms":
		// *************************************************************************************
		// Validate and pass the POST variables to an array
		// This is the moment to validate the entered values from the user
		// although Sencha EXTJS make good validation, we could check again 
		// just in case 
		// *************************************************************************************
		$row['rolePermID'] = dataEncode($data['rolePermID']);
		$row['value'] = dataEncode($data['ac_perm']);
		$row['permID'] = dataEncode($data['permID']);
		$row['perm_key'] = dataEncode($data['perm_key']);
		$row['perm_name'] = dataEncode($data['perm_name']);
		// *************************************************************************************
		// Finally that validated POST variables is inserted to the database
		// This one make the JOB of two, if it has an ID key run the UPDATE statement
		// if not run the INSERT stament
		// *************************************************************************************
		$mitos_db->setSQL("UPDATE acl_role_perms 
      				  		  SET value = '" . $row['value'] . "' " . " 
      						WHERE id = '" . $row['rolePermID'] . "'");
		$mitos_db->execLog();
		$mitos_db->setSQL("UPDATE acl_permissions 
        					  SET perm_key = '" . $row['perm_name'] . "', " . "
        						  perm_name = '" . $row['perm_name'] . "' " . " 
					   		WHERE id = '" . $row['permID'] . "'");
		
		$mitos_db->execLog();
		echo "{ success: true }";
	break;
}
?>