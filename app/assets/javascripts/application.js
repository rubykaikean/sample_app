// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function () {

});

	function add_user(sel){

		// var form_data = $("form").serialize();
		var user_id = sel;

		$.ajax({
			type: 'GET',
			dataType: "json",
			url: "/users/" + user_id ,
			// url: "/users" ,
			// data: { id: user_id },
			success: function(data) {
				// alert(data.name + data.address + data.age + data.mobile_phone );
				// grabbed some data!
				$(".append_user").append('<td>' + data.id + '</td>');
				$(".append_user").append('<td>' + data.name + '</td>');
				$(".append_user").append('<td>' + data.age + '</td>');
				$(".append_user").append('<td>' + data.address + '</td>');
				$(".append_user").append('<td>' + data.mobile_phone + '</td>');
				$(".append_user").append('<td><a href="/users/' + data.id + '>Show</a></td>');
				$(".append_user").append('<td><a href="/users/' + data.id + '/edit">Edit</a></td>');
				$(".append_user").append('<td><a data-confirm="Are you sure?" data-method="delete" href="/users/' +
				 data.id + '" rel="nofollow">Destroy</a></td>');


			}
		});	
	};

// function merge_form(){

// }