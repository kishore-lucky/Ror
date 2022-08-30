// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
// $(document).ready(function(){

//     $(".update").on("change", function(e) {
//         $.ajax({
//             url: $(this).attr('action'),
//             data: $(this).serialize(),
//             type: "POST",
//             dataType: "json",
//             success: function(response) {
//                 console.log(response);
//                 alert("Form Updated successfully");
//             },
//             error: function(xhr, textStatus, errorThrown) {alert("Form not successfully");}
//         });
//         e.preventDefault(); 
//     });
//     });
// $(document).ready(function(){
//     alert("hello");
// });

$("form select").on('change', function(e) {
    $.ajax({
        url: $('.update').attr('action'),
        data: $('.update').serialize(),
        type: "POST",
        dataType: "json",
        success: function(response) {
            console.log(response);
            alert("User Updated successfully");
        },
        error: function(xhr, textStatus, errorThrown) {}
    });
    e.preventDefault(); 
});