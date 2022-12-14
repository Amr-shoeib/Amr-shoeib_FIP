/* Access the form element to access the input values,
.. error element
.. success element
.. the submit button
.. and the please wait element..
*/

let form = document.forms["contact-form"];
let error = document.querySelector(".error");
let success = document.querySelector(".success");
let submitButton = document.querySelector("form button");
let pleaseWaitMessage = document.querySelector(".please-wait");

function disableButton() {
    submitButton.disabled = true;
    submitButton.classList.add("disabled");
    pleaseWaitMessage.innerHTML = "Please wait...";
}

// function to enable the submit button

function enableButton(){
    submitButton.disabled = false;
    submitButton.classList.add("disabled");
    pleaseWaitMessage.innerHTML = ""
}

// function for errror element

function clearError(){
    error.innerHTML = "";
    error.style.display = "";
}

// function to clear the form when the email was send successfully

function clearFor(){
    form.name.value = "";
    form.email.value = "";
    form.subject.value = "";
    form.message.value = "";
    pleaseWaitMessage.innerHTML = "";

 // Timer

 setTimeout(function(){
    success.style.display="";
    success.innerHTML = "";
    submitButton.disabled = false;
    submitButton.classList.remove("disabled")
 },5000)

}

form.addEventListener("submit", function(){
e.preventDefault();


// object to hold the fields names and values and send the object to php file

let formdata = {
    "name": this.name.value,
    "email": this.email.value,
    "subject": this.subject.value,
    "message": this.message.value,
    
}

// loop through the form data to check the fields

for(let[key, value]of object.entries(formdata)){
    if(value === ""){
        // empty data desplay an error message and stop the function
        error.style.display = "block";
        error.innerHTML = "All fildes are required";
        return false;
        }else{
        clearError();
    }
}

// send the data to php file

let JSONdata = JSON.stringify(formdata);
//Need XLHTP requestto send the data to the server
 let http = new XMLHttpRequest();
 
 // open method
 http.open('post', "form.php", true);

 //the data is send as key => value pairs " */

 http.setRequestHeader("content-type", "application/x-www-form-urlencoded");

 //send the request, disable the submit button,and showing the please wait message */

 http.send('message=' + JSONdata);
	disableButton();

    //catch the servers response.
	/* run the onreadystatechange event-handler. */

    http.onreadystatechange = function(){
		/* then  check the readyState and status properties. */
		if(this.readyState == 4 && this.status == 200){
			/* if the request was successful,catch the response with the
			responseText property. */
			let response = this.responseText;

            //check now the incoming messages */

            if(response.indexOf("Error") != -1){
				/* If the message is an error, we display it. */
				error.style.display = "block";
				error.innerHTML = response;

                enableButton();
			}else{
                /* If the response is the success message,  clear any error.  */
				clearError();
                
				success.style.display = "block";
				success.innerHTML = response;
				/*last i clear the contact form */
				clearForm();
			}
		};
	}







});


