// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .
$(function(){
    // If field type is radio or checkbox then need to enter no of choices
    $( "#admin_question_type_field_type_id" ).change(function() {
        var fieldTypeId = $(this).find(':selected').val();
        $.get("/admin/question_types/check_field_optionable/" + fieldTypeId , function(data){
            if (data == "yes")
                $("#no_of_choice").show();
            else
                $("#no_of_choice").hide();
        });
    });
});