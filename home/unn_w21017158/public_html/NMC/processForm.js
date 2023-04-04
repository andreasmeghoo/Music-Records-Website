window.addEventListener('load', function() {
    'use strict';
 const orderForm = document.getElementById("orderForm");
 	orderForm.submit.addEventListener("click", validateForm);
	orderForm.addEventListener("click", enableDisableSubmit);
//	document.querySelector('input[name="submit"]').disabled = false;
 let valFailed = false;
  
   const records = orderForm.querySelectorAll('span.chosen');
	const recordCount = records.length;
	const cMethods = orderForm.querySelectorAll('input[name="deliveryType"]');
	const cMethodCount = cMethods.length;
  
  for (let i = 0; i < recordCount; i++) {
  records[i].addEventListener("click", totalCost);
}

for(let i=0; i<cMethodCount; i++)
{
	cMethods[i].addEventListener("click", totalCost);
}
  
  let total = 0;
  let collectionMethod = 0;
  let grandTotal = 0;
  
 function totalCost() {
	  
	  
	total = 0;
		
		for (let i = 0; i < recordCount; i++) {
			const record = records[i];
			const recordCheckbox = record.querySelector('input[name="record[]"][data-price]');
			
			if(recordCheckbox.checked)
			{
				total += parseFloat(recordCheckbox.dataset.price);
			}
		}


	collectionMethod = 0;		
for(let i = 0;  i< cMethodCount; i++)
		{
			if(cMethods[i].checked)
			{
			collectionMethod = parseFloat(cMethods[i].dataset.price);
			}
		}
	   
grandTotal = (total + collectionMethod).toFixed(2); 
document.querySelector('input[name="total"]').value = grandTotal;
 
 }
 
 function validateForm(event) {
	  if(total == 0)
		{
			valFailed = true;
			alert("You must select at least one record.");
		}
		
		if(document.querySelector('input[name="forename"]').value  == '')	
		{
			valFailed = true;
			alert("You must enter a forename");
		}
		
		if(document.querySelector('input[name="surname"]').value  == '')
		{
			valFailed = true;
			alert("You must enter a surname");
		}
		
		
		if(valFailed == true) event.preventDefault();
	
	 
 }
 
 function enableDisableSubmit(){
	 if(document.querySelector('input[name="termsChkbx"]').checked)
	 {
		document.querySelector('input[name="submit"]').disabled = false;
		document.getElementById("termsText").style.color = "black"; 
		document.getElementById("termsText").style.fontWeight = ""; 
	 }else
	 {
		document.querySelector('input[name="submit"]').disabled = true;
		document.getElementById("termsText").style.color = "#FF0000";
		document.getElementById("termsText").style.fontWeight = "bold";
	 }
	 
 }
 

  


});