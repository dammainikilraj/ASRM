// ====================  upload profile pic page 
$(function() {
        $('.image-editor').cropit();

        $('.exportimg').click(function() {
            var imageData = $('.image-editor').cropit('export');
            	$(".hidden-image-data").replaceWith( '<input type="file" name="file" class="hidden-image-data" value="'+imageData+'">');
          /*   $('.hidden-image-data').val(imageData); */
          });
        $('.export').click(function() {
            var imageData = $('.image-editor').cropit('export');
        	$(".hidden-image-data").replaceWith( '<input type="file" name="file" class="hidden-image-data" value="'+imageData+'">');
            /* $(".cropit-preview-image").replaceWith( '<img class="cropit-preview-image"  src="'+imageData+'">');
            $('.hidden-image-data').val(imageData); */
          /*   document.querySelector('.cropit-preview-image-container').innerHTML += '<img class="cropit-preview-image" src="'+imageData+'">'; */
            /* window.open(imageData); */
          });
        

      });
      
// ==================== profile pic image gallery page

$(function() {
$('.image-from-gallery').click(function(){
    $('.image-from-gallery-selected').removeClass('image-from-gallery-selected');
    $(this).addClass('image-from-gallery-selected');
    var getSelectedImage= $(this).attr("src");
    $("#get_selected_profile_image").attr("value",getSelectedImage);
   /*  alert($(this).attr("src")); */
    
});
});



