
  
    $(document).ready(function(){

    	console.log("here ready");

    	var gender_option="";
    	$('div.context.mentee').hide();
    	$('div.context.mentor').hide();
    	$('#user_gender').change(function(e) {
    	gender_option=$(e.target).val();

    	if(gender_option=="M"){
    		$('div.context.mentor').show();
    		$('div.context.mentee').hide();	
    	}else if(gender_option=="F"){
    		$('div.context.mentee').show();	
    		$('div.context.mentor').show();
    	}
    	console.log(gender_option);
    });

    })