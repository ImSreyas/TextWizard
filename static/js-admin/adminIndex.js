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

const formatSelectorBtns = document.querySelectorAll('.file-format-container')
const optionContainers = document.querySelectorAll('.file-format-option-container')

formatSelectorBtns.forEach((formatSelectorBtn, index) => {
  const optionContainer = optionContainers[index]
  formatSelectorBtn.addEventListener('click', ()=>{
    if(optionContainer.getAttribute('vis') == 'false') optionContainer.setAttribute('vis', 'true')
    else optionContainer.setAttribute('vis', 'false')
  })

  const options = optionContainer.querySelectorAll('option')
  options.forEach(option => {
    option.addEventListener('click', (e) => {
      optionContainer.setAttribute('vis', 'false')
      formatSelectorBtn.children[0].innerText = e.target.innerText
    })
  })
})

// ?end of file format selection 
// ? download btn 
const downloadBtns = document.querySelectorAll('.txt-download-link')

downloadBtns.forEach((downloadBtn, index) => {
  downloadBtn.addEventListener('click', () => {
    const textFormat = document.querySelectorAll('.file-format-container')[index].querySelector('.actualFileFormat').innerText
    const text = getTextFromEditor(index)
    const fileName = document.querySelectorAll('.file-name-container')[index].querySelector('.file-name-input').value

    switch(textFormat){
      case ".txt": txtDownload(text, fileName, index)
      break
      case ".html": htmlDownload(text, fileName, index)
      break
      case ".css": cssDownload(text, fileName, index)
      break
      case ".csv": csvDownload(text, fileName, index)
      break
      case ".json": jsonDownload(text, fileName, index)
      break
      case ".xml": xmlDownload(text, fileName, index)
      break
      case ".md": mdDownload(text, fileName, index)
      break
      case ".pdf": pdfDownload(text, fileName, index)
      break
      default : txtDownload(text, fileName, index)
    }
  })
})
// ? end of download btn
//? function for getting the text from editor 
const getTextFromEditor = (i) => {
  let paragraphs = document.querySelectorAll(".text-content")[i].querySelectorAll('p');
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
function txtDownload(data, fileName, index){
  const downloadLink = document.querySelectorAll('.txt-download-link')[index]
    downloadLink.href = URL.createObjectURL(new Blob([data], { type: 'text/plain' }))
    if(fileName != ''){
        downloadLink.download = fileName + '.txt'
    }
}
function htmlDownload(data, fileName, index){
  const downloadLink = document.querySelectorAll('.txt-download-link')[index]
  downloadLink.href = URL.createObjectURL(new Blob([data], { type: 'text/html' }))
  if(fileName != ''){
    downloadLink.download = fileName + '.txt'
  }
}
function cssDownload(data, fileName, index){
  const downloadLink = document.querySelectorAll('.txt-download-link')[index]
  downloadLink.href = URL.createObjectURL(new Blob([data], { type: 'text/css' }))
  if(fileName != ''){
    downloadLink.download = fileName + '.txt'
  }
}
function jsonDownload(data, fileName, index){
  const downloadLink = document.querySelectorAll('.txt-download-link')[index]
  downloadLink.href = URL.createObjectURL(new Blob([data], { type: 'application/json' }))
  if(fileName != ''){
    downloadLink.download = fileName + '.txt'
  }
}
function xmlDownload(data, fileName, index){
  const downloadLink = document.querySelectorAll('.txt-download-link')[index]
  downloadLink.href = URL.createObjectURL(new Blob([data], { type: 'application/xml' }))
  if(fileName != ''){
    downloadLink.download = fileName + '.xml'
  }
}
function csvDownload(data, fileName, index){
  const downloadLink = document.querySelectorAll('.txt-download-link')[index]
  downloadLink.href = URL.createObjectURL(new Blob([data], { type: 'text/csv' }))
  if(fileName != ''){
    downloadLink.download = fileName + '.csv'
  }
}
function mdDownload(data, fileName, index){
  const downloadLink = document.querySelectorAll('.txt-download-link')[index]
  downloadLink.href = URL.createObjectURL(new Blob([data], { type: 'text/markdown' }))
  downloadLink.download = 'markdownFile.md'
  if(fileName != ''){
    downloadLink.download = fileName + '.md'
  }
}
function pdfDownload(data, fileName, index){
  const downloadLink = document.querySelectorAll('.txt-download-link')[index]
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
const copyBtn = document.querySelectorAll('.tool-box .copy')
copyBtn.forEach((cp, index) => {
    cp.addEventListener('click', () => {
        navigator.clipboard.writeText(getTextFromEditor(index))
    })
})

//?share
const shareBtn = document.querySelectorAll('.tool-box .share')
shareBtn.forEach((sb, index) => {
    if(sb){
        sb.addEventListener('click', () => {
            const textFormat = document.querySelectorAll('.file-format-container-new .actualFileFormatNew')[index].innerText
            const shareList = document.querySelectorAll('.share-list-container')[index]
            if(shareList.getAttribute('vis') == 'false'){
                shareList.setAttribute('vis', 'true')
                const users = document.querySelectorAll(".user-data-container[selected='true']")
                users.forEach(user => {
                    user.setAttribute('selected', 'false')
                })
                const userList = document.querySelectorAll('.user-data-container')
                userList.forEach(user => {
                    user.style.display = 'grid'
                })
            } 
            else shareList.setAttribute('vis', 'false')
        })
    }
})


const formatSelectorBtnNews = document.querySelectorAll('.file-format-container-new')
const optionContainerNews = document.querySelectorAll('.file-format-option-container-new')
formatSelectorBtnNews.forEach((formatSelectorBtnNew, index) => {
    if(formatSelectorBtnNew){
        formatSelectorBtnNews[index].addEventListener('click', ()=>{
            if(optionContainerNews[index].getAttribute('vis') == 'false') optionContainerNews[index].setAttribute('vis', 'true')
            else optionContainerNews[index].setAttribute('vis', 'false')
        })
    }
})



const optionsNews = document.querySelectorAll('.file-format-option-container-new')
let options
if(optionsNews){
    optionsNews.forEach((option, i) => {
        options = option.querySelectorAll('option')
        options.forEach((o) => {
            o.addEventListener('click', (e) => {
                optionContainerNews[i].setAttribute('vis', 'false')
                formatSelectorBtnNews[i].children[0].innerText = e.target.innerText
            })
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
const userSearch_ = document.querySelectorAll('.user-search')
userSearch_.forEach(userSearch => {
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
})

// -final share btn 
const finalShare_ = document.querySelectorAll('.share-btn-final')
finalShare_.forEach((finalShare, index) => {
    if(finalShare){
        finalShare.addEventListener('click', () => {
            const selectedUsers = document.querySelectorAll(".user-data-container[selected='true']")
            let selectedUserIds = []
            selectedUsers.forEach(user => {
                selectedUserIds.push(parseInt(user.id))
            })
            const fileName = document.querySelectorAll('.file-name-input')[index].value
            const fileFormat = document.querySelectorAll('.file-format-container-new')[index].querySelector('.actualFileFormatNew').innerHTML
            const text = getTextFromEditor(index)
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
                    document.querySelectorAll('.share-list-container').forEach(list => {
                        list.setAttribute('vis', 'false')
                    })
                    popup('shared successfully', 'green', '4s')
                }
            })
        })
    }
})
//- text edit updater
const td = document.querySelectorAll('.text-content-new')
if(td){
  td.forEach((t, index) => {
    t.addEventListener('keyup', (e) => {
      const ti = e.target.id
      const tc = getTextFromEditor(index)
      $.ajax({
        url: '/admin/updateText',
        type: "POST",
        data: {
          textId: ti,
          textContent: tc
        }
      })
    })
  })
}
//  -ocr js end 