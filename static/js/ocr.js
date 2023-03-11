let container = document.getElementById('navigationBar');
container.addEventListener('click', () => {
  const input = document.querySelector('.image-input');
  input.click();
  input.addEventListener('change', () => {
    const file = input.files[0];
    const url = URL.createObjectURL(file);
    const img = document.createElement('img');
    img.src = url;
    let imageItems = document.querySelectorAll('.drag-and-drop-icon-container img');
    imageItems.forEach((item) => (item.remove()));
    document.querySelector('.drag-and-drop-icon-container').append(img);

    // Create a new FormData object
    const formData = new FormData();

    // Add the image file to the form data
    formData.append('file', file);

    // Send the form data via Ajax
    $.ajax({
      url: '/ocrCore',
      type: "POST",
      data: formData,
      processData: false,
      contentType: false,
      success: (data) => {
        $('.text-content').append(data);
      }
    });
  });
});
