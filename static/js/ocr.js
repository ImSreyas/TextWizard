let container = document.querySelector('.drag-and-drop-icon-container');
let fileChangeListenerAdded = false; // Flag variable

container.addEventListener('click', () => {
  const input = document.querySelector('.image-input');
  input.click();

  if (!fileChangeListenerAdded) { // Check if the event listener has already been added
    const handleFileChange = () => {
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
      document.querySelector('.convert-btn').addEventListener('click', ()=> {
        $.ajax({
          url: '/ocrCore',
          type: "POST",
          data: formData,
          processData: false,
          contentType: false,
          success: (data) => {
              document.querySelector('.content-bar').style.display = 'grid'
            // Split the OCR output into lines
            const lines = data.split('\n');
  
            // Display each line on a separate line in the browser
            for (const line of lines) {
              const p = document.createElement('p');
              p.textContent = line;
              $('.text-content').append(p);
            }
  
            const downloadLink = document.querySelector('.txt-download-link');
            downloadLink.href = URL.createObjectURL(new Blob([data], { type: 'text/plain' }));
            downloadLink.style.display = 'block'
          }
        });
      })
    };

    input.addEventListener('change', handleFileChange);
    fileChangeListenerAdded = true; // Set the flag variable to true
  }
});


