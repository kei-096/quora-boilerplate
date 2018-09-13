$('#like-button').on('click', function(){
	$ajax({
		type: 'POST'
		url: '/votes'
		data: {
			user_id: 
			answer_id: 
		}
		.done(function(response){

		})
	})
});


console.log("JQUERY Ready")
let $like = $("#like-button");
console.log($like);
$("#like-button").submit(function(e){
	e.preventDefault();
	console.log("Prevented Default");
	console.log(this.action);
	console.log(this.method);
	console.log(this.data); 
});