<?php
$API = array(
    /**
    * Encounter Functions
    */
    'Encounter'=>array(
        'methods'=>array(
            'checkOpenEncounters'=>array(
               'len'=>0
            ),
            'getEncounters'=>array(
               'len'=>1
            ),
            'getEncounter'=>array(
               'len'=>1
            ),
            'updateEncounter'=>array(
               'len'=>1
            ),
            'getVitals'=>array(
               'len'=>1
            ),
            'addVitals'=>array(
               'len'=>1
            ),
            'createEncounter'=>array(
                'len'=>1
            ),
            'updateSoapById'=>array(
                'len'=>1
            ),
            'updateReviewOfSystemsChecksById'=>array(
                'len'=>1
            ),
            'updateReviewOfSystemsById'=>array(
                'len'=>1
            ),
            'updateDictationById'=>array(
                'len'=>1
            ),
            'getProgressNoteByEid'=>array(
                'len'=>1
            ),
            'closeEncounter'=>array(
               'len'=>1
            ),
            'getEncounterEventHistory'=>array(
               'len'=>1
            )
        )
    ),
    /**
    * Calendar Functions
    */
    'Calendar'=>array(
        'methods'=>array(
            'getCalendars'=>array(
               'len'=>0
            ),
            'getEvents'=>array(
               'len'=>1
            ),
            'addEvent'=>array(
               'len'=>1
            ),
            'updateEvent'=>array(
               'len'=>1
            ),
            'deleteEvent'=>array(
               'len'=>1
            )
        )
    ),
    /**
    * Messages Functions
    */
    'Messages'=>array(
        'methods'=>array(
            'getMessages'=>array(
               'len'=>1
            ),
            'deleteMessage'=>array(
                'len'=>1
            ),
            'sendNewMessage'=>array(
                'len'=>1
            ),
            'replyMessage'=>array(
                'len'=>1
            ),
            'updateMessage'=>array(
                'len'=>1
            )
        ),

    ),
    /**
    * Facilities Functions
    */
    'Facilities'=>array(
        'methods'=>array(
            'getFacilities'=>array(
               'len'=>1
            ),
            'addFacility'=>array(
                'len'=>1
            ),
            'updateFacility'=>array(
                'len'=>1
            ),
            'deleteFacility'=>array(
                'len'=>1
            )
        ),

    ),
    /**
    * Medical Functions
    */
    'Medical'=>array(
        'methods'=>array(
            'getImmunizationsList'=>array(
               'len'=>0
            ),
            'getPatientImmunizations'=>array(
               'len'=>1
            ),
            'addPatientImmunization'=>array(
               'len'=>1
            ),
            'getPatientAllergies'=>array(
               'len'=>1
            ),
            'addPatientAllergy'=>array(
               'len'=>1
            ),
            'getMedicalIssues'=>array(
               'len'=>1
            ),
            'addMedicalIssue'=>array(
               'len'=>1
            ),
            'getSurgeries'=>array(
               'len'=>1
            ),
            'addSurgery'=>array(
               'len'=>1
            ),
            'getDental'=>array(
               'len'=>1
            ),
            'addDental'=>array(
               'len'=>1
            )
        ),

    ),
    /**
    /**
    * AddressBook Functions
    */
    'AddressBook'=>array(
        'methods'=>array(
            'getAddresses'=>array(
               'len'=>1
            ),
            'addContact'=>array(
                'len'=>1
            ),
            'updateAddress'=>array(
                'len'=>1
            )
        ),

    ),
    /**
    * Practice Functions
    */
    'Practice'=>array(
        'methods'=>array(
            'getPharmacies'=>array(
               'len'=>0
            ),
            'addPharmacy'=>array(
                'len'=>1
            ),
            'updatePharmacy'=>array(
                'len'=>1
            ),
            'getInsurances'=>array(
                'len'=>0
            ),
            'addInsurance'=>array(
                'len'=>1
            ),
            'updateInsurance'=>array(
                'len'=>1
            ),
            'getInsuranceNumbers'=>array(
                'len'=>1
            ),
            'getX12Partners'=>array(
                'len'=>1
            )
        ),

    ),
    /**
    * Globals Functions
    */
    'Globals'=>array(
        'methods'=>array(
            'getGlobals'=>array(
               'len'=>0
            ),
            'updateGlobals'=>array(
                'len'=>1
            )
        ),

    ),
    /**
    * Lists Functions
    */
    'Lists'=>array(
        'methods'=>array(
            'getOptions'=>array(
               'len'=>1
            ),
            'addOption'=>array(
                'len'=>1
            ),
            'updateOption'=>array(
                'len'=>1
            ),
            'deleteOption'=>array(
                'len'=>1
            ),
            'sortOptions'=>array(
                'len'=>1
            ),
            'getLists'=>array(
                'len'=>1
            ),
            'addList'=>array(
                'len'=>1
            ),
            'updateList'=>array(
                'len'=>1
            ),
            'deleteList'=>array(
                'len'=>1
            )
        ),

    ),
    /**
    * Office Notes Functions
    */
    'OfficeNotes'=>array(
        'methods'=>array(
           'getOfficeNotes'=>array(
               'len'=>1
           ),
           'addOfficeNotes'=>array(
               'len'=>1
           ),
           'updateOfficeNotes'=>array(
               'len'=>1
           )
        )
    ),
    /**
    * Services Functions
    */
    'Services'=>array(
        'methods'=>array(
           'getServices'=>array(
               'len'=>1
           ),
            'addService'=>array(
               'len'=>1
           ),
            'updateService'=>array(
               'len'=>1
           ),
            'liveIDCXSearch'=>array(
               'len'=>1
           ),
            'getCptCodesBySelection'=>array(
               'len'=>1
           )
        )
    ),    /**
     * Form layout Engine Functions
     */
    'FormLayoutEngine'=>array(
        'methods'=>array(
            'getFields'=>array(
                'len'=>1
            )
        )
    ),
    /**
     * Form layout Builder Functions
     */
    'FormLayoutBuilder'=>array(
        'methods'=>array(
            'getFormDataTable'=>array(
                'len'=>1
            ),
            'addField'=>array(
                'len'=>1
            ),
            'updateField'=>array(
                'len'=>1
            ),
            'deleteField'=>array(
                'len'=>1
            ),
            'sortFields'=>array(
                'len'=>1
            ),
            'getForms'=>array(
                'len'=>0
            ),
            'getParentFields'=>array(
                'len'=>1
            ),
            'getFormFieldsTree'=>array(
                'len'=>1
            )
        )
    ),

    /**
     * Patient Functions
     */
    'Patient'=>array(
        'methods'=>array(
            'patientLiveSearch'=>array(
                'len'=>1
            ),
            'currPatientSet'=>array(
            	'len'=>1
            ),
            'currPatientUnset'=>array(
            	'len'=>0
            ),
            'getPatientDemographicData'=>array(
            	'len'=>1
            ),
            'getPatientsByPoolArea'=>array(
            	'len'=>1
            )

        )
    ),

    /**
     * User Functions
     */
    'User'=>array(
        'methods'=>array(
            'getUsers'=>array(
                'len'=>1
            ),
            'getCurrentUserData'=>array(
                'len'=>0
            ),
            'addUser'=>array(
            	'len'=>1
            ),
            'updateUser'=>array(
            	'len'=>1
            ),
            'chechPasswordHistory'=>array(
            	'len'=>1
            ),
            'changeMyPassword'=>array(
            	'len'=>1
            ),
            'updateMyAccount'=>array(
            	'len'=>1
            ),
            'verifyUserPass'=>array(
            	'len'=>1
            )

        )
    ),

    /**
     * Authorization Procedures Functions
     */
    'authProcedures'=>array(
        'methods'=>array(
            'login'=>array(
                'len'=>1
            ),
            'ckAuth'=>array(
                'len'=>0
            ),
            'unAuth'=>array(
                'len'=>0
            ),
            'getSites'=>array(
                'len'=>0
            )

        )
    ),

    /**
     * Comobo Boxes Data Functions
     */
    'CombosData'=>array(
        'methods'=>array(
            'getOptionsByListId'=>array(
                'len'=>1
            ),
            'getUsers'=>array(
                'len'=>0
            ),
            'getLists'=>array(
                'len'=>0
            ),
            'getFacilities'=>array(
                'len'=>0
            ),
            'getRoles'=>array(
                'len'=>0
            ),
            'getCodeTypes'=>array(
                'len'=>0
            ),
            'getCalendarCategories'=>array(
                'len'=>0
            ),
            'getLanguages'=>array(
                'len'=>0
            ),
            'getAuthorizations'=>array(
                'len'=>0
            ),
            'getSeeAuthorizations'=>array(
                'len'=>0
            ),
            'getTaxIds'=>array(
                'len'=>0
            ),
            'getFiledXtypes'=>array(
                'len'=>0
            ),
            'getPosCodes'=>array(
                'len'=>0
            ),
        )
    ),
    /**
     * Navigation Function
     */
    'Navigation'=>array(
        'methods'=>array(
            'getNavigation'=>array(
                'len'=>0
            )
        )
    ),

    /**
     * Navigation Function
     */
    'Roles'=>array(
        'methods'=>array(
            'getRoleForm'=>array(
                'len'=>1
            ),
            'getRolesData'=>array(
                'len'=>0
            ),
            'saveRolesData'=>array(
                'len'=>1
            )
        )
    ),

    /**
     * Navigation Function
     */
    'ACL'=>array(
        'methods'=>array(
            'hasPermission'=>array(
                'len'=>1
            ),
        )
    ),

    /**
     * Navigation Function
     */
    'Logs'=>array(
        'methods'=>array(
            'getLogs'=>array(
                'len'=>1
            ),
        )
    )
);