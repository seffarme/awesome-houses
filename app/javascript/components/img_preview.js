const initReadURL = () => {
  function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
          $('#blah').attr('style', `background: url(${e.target.result}) no-repeat fixed center`);
        }

        reader.readAsDataURL(input.files[0]);
    }
  }
  $("#imgInp").change(function(){
      readURL(this);
  });
}

export { initReadURL };
