<?php
//--------------------------------------------------------------------------------------------------------------------------
// data_create.ejs.php
// v0.0.2
// Under GPLv3 License
//
// Integrated by: GI Technologies Inc. in 2011
//
// Remember, this file is called via the Framework Store, this is the AJAX thing.
//--------------------------------------------------------------------------------------------------------------------------

session_name ( "MitosEHR" );
session_start();
session_cache_limiter('private');

include_once("../../../library/dbHelper/dbHelper.inc.php");
include_once("../../../library/I18n/I18n.inc.php");
require_once("../../../repository/dataExchange/dataExchange.inc.php");

$mitos_db = new dbHelper();

// *************************************************************************************
// Parce the data generated by EXTJS witch is JSON
// *************************************************************************************
$data = json_decode ( $_POST['row'] );

// *************************************************************************************
// Validate and pass the POST variables to an array
// This is the moment to validate the entered values from the user
// although Sencha EXTJS make good validation, we could check again 
// just in case 
// *************************************************************************************
$row['id'] 					= trim($data[0]->id);
$row['name'] 				= dataEncode( $data[0]->name );
$row['phone'] 				= dataEncode( $data[0]->phone );
$row['fax'] 				= dataEncode( $data[0]->fax );
$row['street'] 				= dataEncode( $data[0]->street );
$row['city'] 				= dataEncode( $data[0]->city );
$row['state'] 				= dataEncode( $data[0]->state );
$row['postal_code'] 		= dataEncode( $data[0]->postal_code );
$row['country_code'] 		= dataEncode( $data[0]->country_code );
$row['federal_ein'] 		= dataEncode( $data[0]->federal_ein );
$row['service_location'] 	= ( $data[0]->service_location == 'on') ? 1 : 0;
$row['accepts_assignment'] 	= ( $data[0]->accepts_assignment == 'on') ? 1 : 0;
$row['billing_location'] 	= ( $data[0]->billing_location == 'on') ? 1 : 0;
$row['pos_code'] 			= dataEncode( $data[0]->pos_code );
$row['domain_identifier'] 	= dataEncode( $data[0]->domain_identifier );
$row['attn'] 				= dataEncode( $data[0]->attn );
$row['tax_id_type'] 		= dataEncode( $data[0]->tax_id_type );
$row['facility_npi'] 		= dataEncode( $data[0]->facility_npi );

// *************************************************************************************
// Finally that validated POST variables is inserted to the database
// This one make the JOB of two, if it has an ID key run the UPDATE statement
// if not run the INSERT stament
// *************************************************************************************
$sql = 		"UPDATE 
				facility 
			SET
				id = '" . $row['id'] . "', " . "
				name = '" . $row['name'] . "', " . "
				phone = '" . $row['phone'] . "', " . "
				fax = '" . $row['fax'] . "', " . "
				street = '" . $row['street'] . "', " . "
				city = '" . $row['city'] . "', " . "
				state = '" . $row['state'] . "', " . "
				postal_code = '" . $row['postal_code'] . "', " . "
				country_code = '" . $row['country_code'] . "', " . "
				federal_ein = '" . $row['federal_ein'] . "', " . "
				service_location = '" . $row['service_location'] . "', " . " 
				billing_location = '" . $row['billing_location'] . "', " . "
				accepts_assignment = '" . $row['accepts_assignment'] . "', " . "
				pos_code = '" . $row['pos_code'] . "', " . "
				domain_identifier = '" . $row['domain_identifier'] . "', " . "
				attn = '" . $row['attn'] . "', " . " 
				tax_id_type = '" . $row['tax_id_type'] . "', " . "
				facility_npi = '" . $row['facility_npi'] . "' " . " 
			WHERE id ='" . $row['id'] . "'";
			
$mitos_db->setSQL($sql);
$ret = $mitos_db->execOnly();

if ( $ret == "" ){
	echo '{ success: false, errors: { reason: "'. $ret[2] .'" }}';
} else {
	echo "{ success: true }";
}

?>