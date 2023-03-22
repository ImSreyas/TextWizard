// -update profile 
let optionContainerN = document.querySelectorAll('.gender-container button')
Array.prototype.forEach.call(optionContainerN, option => {
    option.addEventListener('click', (e) => {
        Array.prototype.forEach.call(optionContainerN, option => {
            option.setAttribute('selected', false)
        })
        e.target.setAttribute('selected', true)
    })
})

$.each($('.registration-input'), (index, item) => {
    $(item).keyup(()=>{
        let name = $('.name').val()
        let address = $('.address').val()
        let email = $('.email').val()
        let phone = $('.phone').val()
        let username = $('.username').val()
        let password = $('.password').val()
        let confirmPassword = $('.confirm-password').val()
        let gender = $('.gender-container button[selected=true]').text()
        let userType = $('.user-type-container button[selected=true]').text()
        $.ajax({
            url: '/updateProfile',
            type: "POST",
            data : {
                name: name,
                userType: userType,
                gender: gender,
                address: address,
                phone: phone,
                email: email,
                username: username,
                password: password,
                confirmPassword: confirmPassword,
                submit: false
            },
            success: (data)=>{
                let errorContainer = $('error')
                $.each(errorContainer, (i, error) => {
                    if(index < i) {
                        data[i] = ''
                    }
                    $(error).html(data[i])
                })
            }
        })

    })
})

$(document).ready(()=>{
    $('.reg-submit').click(()=>{
        let name = $('.name').val()
        let address = $('.address').val()
        let email = $('.email').val()
        let phone = $('.phone').val()
        let username = $('.username').val()
        let password = $('.password').val()
        let confirmPassword = $('.confirm-password').val()
        let gender = $('.gender-container button[selected=true]').text()
        let userType = $('.user-type-container button[selected=true]').text()
        console.log(userType)
        $.ajax({
            url: '/updateProfile',
            type: "POST",
            data : {
                name: name,
                gender: gender,
                address: address,
                phone: phone,
                email: email,
                username: username,
                submit: true
            },
            success: (data)=>{
                if(data == 'success'){
                location.href = "/profile?message=profile_update_successful&duration=3000"
                }
                else{
                    let errorContainer = $('error')
                    $.each(errorContainer, (index, error) => {
                        $(error).html(data[index])
                    })
                }
            }
        })
    })
})
//  -update profile end 
// -ocr js
//? file format selection  

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
    formatSelectorBtn.children[0].innerText = e.target.innerText
  })
})
// ?end of file format selection 
// ? download btn 
const downloadBtn = document.querySelector('.txt-download-link')
downloadBtn.addEventListener('click', () => {
  const textFormat = document.querySelector('.file-format-container .actualFileFormat').innerText
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
// ? end of download btn
//? function for getting the text from editor 
const getTextFromEditor = () => {
  let paragraphs = document.querySelectorAll('.text-content p');
  let data = "";
  paragraphs.forEach((p, index) => {
    data += p.innerText.trim();
    if (index < paragraphs.length - 1) {
      data += "\n"; // Add newline character if this is not the last paragraph
    }
  });
  return data;
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


//-toolbox
//?copy
const copyBtn = document.querySelector('.tool-box .copy')
copyBtn.addEventListener('click', () => {
    navigator.clipboard.writeText(getTextFromEditor())
})
//?share
const shareBtn = document.querySelector('.tool-box .share')
if(shareBtn){
    shareBtn.addEventListener('click', () => {
        const textFormat = document.querySelector('.file-format-container-new .actualFileFormatNew').innerText
        const shareList = document.querySelector('.share-list-container')
        if(shareList.getAttribute('vis') == 'false') shareList.setAttribute('vis', 'true')
        else shareList.setAttribute('vis', 'false')
    })
}

const formatSelectorBtnNew = document.querySelector('.file-format-container-new')
const optionContainerNew = document.querySelector('.file-format-option-container-new')
if(formatSelectorBtnNew){
    formatSelectorBtnNew.addEventListener('click', ()=>{
        if(optionContainerNew.getAttribute('vis') == 'false') optionContainerNew.setAttribute('vis', 'true')
        else optionContainerNew.setAttribute('vis', 'false')
    })
}


const optionsNew = document.querySelectorAll('.file-format-option-container-new option')
if(optionsNew){
    optionsNew.forEach(option => {
        option.addEventListener('click', (e) => {
            optionContainerNew.setAttribute('vis', 'false')
            formatSelectorBtnNew.children[0].innerText = e.target.innerText
        })
    })
}

// - select user 
const users = document.querySelectorAll('.user-data-container')
users.forEach(user => {
    user.addEventListener('click', (e) => {
        if(user.getAttribute('selected') == 'true') user.setAttribute('selected', 'false')
        else user.setAttribute('selected', 'true')
    })
})
// -search 
const userSearch = document.querySelector('.user-search')
if(userSearch){
    userSearch.addEventListener('keyup', (e)=>{
        let searchValue = e.target.value
        searchValue = searchValue.toLowerCase()
        const userList = document.querySelectorAll('.user-data-container')
        userList.forEach(user => {
            user.style.display = 'none'
        })
        userList.forEach(user => {
            if((user.children[1].children[0].innerText + user.children[1].children[1].innerText).toLowerCase().includes(searchValue)){
                user.style.display = 'grid'
            }
        })
    })
}
// -final share btn 
const finalShare = document.querySelector('.share-btn-final')
if(finalShare){
    finalShare.addEventListener('click', () => {
        const selectedUsers = document.querySelectorAll(".user-data-container[selected='true']")
        let selectedUserIds = []
        selectedUsers.forEach(user => {
            selectedUserIds.push(parseInt(user.id))
        })
        const fileName = document.querySelector('.file-name-input').value
        const fileFormat = document.querySelector('.file-format-container-new .actualFileFormatNew').innerHTML
        const text = getTextFromEditor()
        $.ajax({
            url: '/share',
            type: "POST",
            data: {
                userList: JSON.stringify(selectedUserIds),
                text: text,
                fileName: fileName,
                fileFormat: fileFormat
            },
            success: () => {
                const users = document.querySelectorAll('.user-data-container')
                users.forEach(user => {
                    user.setAttribute('selected', 'false')
                })
                document.querySelector('.share-list-container').setAttribute('vis', 'false')
                popup('shared successfully', 'green', '4s')
            }
        })
    })
}
//  -ocr js end 