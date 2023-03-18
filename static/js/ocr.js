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
        const language = document.querySelector(".language-list-container option[selected='true']").getAttribute('val')
        formData.append('language', language)
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
            document.querySelector('.content-bar').scrollIntoView({behavior: "smooth",block: "center", blockOffset: 500})
            setTimeout(()=> {
              window.scrollBy(0, -16); // adjust by 50 pixels
            }, 500);
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


// -language dropdown start 

const langBtn = document.querySelector('.language-btn')
const langListContainer = document.querySelector('.language-list-container')

langBtn.addEventListener('click', ()=> {
  if(langListContainer.getAttribute('vis') == 'false') langListContainer.setAttribute('vis', 'true')
  else langListContainer.setAttribute('vis', 'false')
})

// -search in language list 

const searchField = document.querySelector('.language-search-input-field')
searchField.addEventListener('keyup', ()=>{
  const optionList = document.querySelectorAll('.language-list-container option')
  optionList.forEach(option => {
    option.style.display = 'none'
  })
  optionList.forEach(option => {
    if(((option.innerText).toLowerCase()).includes((searchField.value).toLowerCase())){
      option.style.display = 'block'
    }
  })
})

// -option selection
const optionList = document.querySelectorAll('.language-list-container option')
optionList.forEach(option => {
  option.addEventListener('click', (e)=>{
    optionList.forEach(op => {
      op.setAttribute('selected', 'false')
    })
    e.target.setAttribute('selected', 'true')
    document.querySelector('.language-list-container').setAttribute('vis', 'false')
    const langBtn = document.querySelector('.language-name-shower')
    langBtn.innerText = e.target.innerText
  })
})

// -language dropdown end


