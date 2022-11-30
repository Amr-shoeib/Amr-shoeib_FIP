<?php
// check if there is a post request.
if(isset($_POST['message'])){
    	/* if we have a post request, we have to decode the json string that
		we are receiving */
		$data = json_decode($_POST['message']);

    ///* The decoded json string is now a php object */
    ///loop trough the object to check for empty fields. i done this before in java script :(, Front end validation is only done for a better user experience. */
        