// import { PDFDocument, StandardFonts } from 'pdf-lib';




let container = document.querySelector('.drag-and-drop-icon-container');
let fileChangeListenerAdded = false;

container.addEventListener('click', () => {
  const input = document.querySelector('.image-input');
  input.click();

  const handleFileChange = () => {
    const file = input.files[0];
    const url = URL.createObjectURL(file);
    const img = document.createElement('img');
    img.src = url;
    let imageItems = document.querySelectorAll('.drag-and-drop-icon-container img');
    imageItems.forEach((item) => (item.remove()));
    document.querySelector('.drag-and-drop-icon-container').append(img);

    // Remove the existing event listener for the "Convert" button
    const convertBtn = document.querySelector('.convert-btn');
    convertBtn.removeEventListener('click', convertImage);

    // Add a new event listener for the "Convert" button
    convertBtn.addEventListener('click', convertImage);

    fileChangeListenerAdded = true;
  };

  if (!fileChangeListenerAdded) { // Check if the event listener has already been added
    input.addEventListener('change', handleFileChange);
  }
});

function convertImage() {
  // Get the selected image file
  const input = document.querySelector('.image-input');
  const file = input.files[0];

  // Create a new FormData object
  const formData = new FormData();
  // Add the image file to the form data
  formData.append('file', file);

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
      const para = document.querySelectorAll('.text-content p')
      para.forEach(p=>{
        p.remove()
      })
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
    }
  });
}



// -language dropdown start 

const langBtn = document.querySelector('.language-btn')
const langListContainer = document.querySelector('.language-list-container')

langBtn.addEventListener('click', ()=> {
  const inputBtn = document.querySelector('.language-search-input-field')
  if(langListContainer.getAttribute('vis') == 'false') langListContainer.setAttribute('vis', 'true')
  else langListContainer.setAttribute('vis', 'false')
  inputBtn.focus()
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
//- file format selection  

const formatSelectorBtn = document.querySelector('.file-format-container')
const optionContainer = document.querySelector('.file-format-option-container')
formatSelectorBtn.addEventListener('click', ()=>{
  if(optionContainer.getAttribute('vis') == 'false') optionContainer.setAttribute('vis', 'true')
  else optionContainer.setAttribute('vis', 'false')
})

const options = document.querySelectorAll('.file-format-option-container option')
options.forEach(option => {
  option.addEventListener('click', (e) => {
    optionContainer.setAttribute('vis', 'false')
    formatSelectorBtn.innerText = e.target.innerText
  })
})
// -end of file format selection 
// - download btn 
const downloadBtn = document.querySelector('.txt-download-link')
downloadBtn.addEventListener('click', () => {
  const textFormat = document.querySelector('.file-format-container').innerText
  const text = getTextFromEditor()
  const fileName = document.querySelector('.file-name-input').value
  switch(textFormat){
    case ".txt": txtDownload(text, fileName)
    break
    case ".html": htmlDownload(text, fileName)
    break
    case ".css": cssDownload(text, fileName)
    break
    case ".csv": csvDownload(text, fileName)
    break
    case ".json": jsonDownload(text, fileName)
    break
    case ".xml": xmlDownload(text, fileName)
    break
    case ".md": mdDownload(text, fileName)
    break
    case ".pdf": pdfDownload(text, fileName)
    break
    default : txtDownload(text, fileName)
  }
})
// - end of download btn
//? function for getting the text from editor 
const getTextFromEditor = () => {
  let paragraphs = document.querySelectorAll('.text-content p')
  let data = ""
  paragraphs.forEach( p => {
    data = data + p.innerText + '\n'
  })
  return data
}
//? txt download function
function txtDownload(data, fileName){
  const downloadLink = document.querySelector('.txt-download-link');
  downloadLink.href = URL.createObjectURL(new Blob([data], { type: 'text/plain' }));
  if(fileName != ''){
    downloadLink.download = fileName + '.txt'
  }
}
function htmlDownload(data, fileName){
  const downloadLink = document.querySelector('.txt-download-link');
  downloadLink.href = URL.createObjectURL(new Blob([data], { type: 'text/html' }));
  if(fileName != ''){
    downloadLink.download = fileName + '.txt'
  }
}
function cssDownload(data, fileName){
  const downloadLink = document.querySelector('.txt-download-link');
  downloadLink.href = URL.createObjectURL(new Blob([data], { type: 'text/css' }));
  if(fileName != ''){
    downloadLink.download = fileName + '.txt'
  }
}
function jsonDownload(data, fileName){
  const downloadLink = document.querySelector('.txt-download-link');
  downloadLink.href = URL.createObjectURL(new Blob([data], { type: 'application/json' }));
  if(fileName != ''){
    downloadLink.download = fileName + '.txt'
  }
}
function xmlDownload(data, fileName){
  const downloadLink = document.querySelector('.txt-download-link');
  downloadLink.href = URL.createObjectURL(new Blob([data], { type: 'application/xml' }));
  if(fileName != ''){
    downloadLink.download = fileName + '.xml'
  }
}
function csvDownload(data, fileName){
  const downloadLink = document.querySelector('.txt-download-link');
  downloadLink.href = URL.createObjectURL(new Blob([data], { type: 'text/csv' }));
  if(fileName != ''){
    downloadLink.download = fileName + '.csv'
  }
}
function mdDownload(data, fileName){
  const downloadLink = document.querySelector('.txt-download-link');
  downloadLink.href = URL.createObjectURL(new Blob([data], { type: 'text/markdown' }));
  downloadLink.download = 'markdownFile.md'
  if(fileName != ''){
    downloadLink.download = fileName + '.md'
  }
}
function pdfDownload(data, fileName){
  const downloadLink = document.querySelector('.txt-download-link');
  downloadLink.href = URL.createObjectURL(new Blob([data], { type: 'application/pdf' }));
  if(fileName != ''){
    downloadLink.download = fileName + '.pdf'
  }
}
// async function pdfDownload(data){
//   // -create a new PDF document
//   const pdfDoc = await PDFDocument.create();
//   const page = pdfDoc.addPage();

//   const font = await pdfDoc.embedFont(StandardFonts.Helvetica);
//   const textSize = 30;
//   const text = data;
//   const { width } = font.widthOfTextAtSize(text, textSize);
//   const x = page.getWidth() / 2 - width / 2;
//   const y = page.getHeight() / 2 - textSize / 2;

//   page.drawText(text, { x, y, size: textSize, font });
//   const pdfBytes = await pdfDoc.save();
//   const downloadLink = document.querySelector('.txt-download-link');
//   downloadLink.href = URL.createObjectURL(new Blob([pdfBytes], { type: 'application/pdf' }));
// }