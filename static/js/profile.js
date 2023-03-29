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


// -post 
function getPosts(){
    $.ajax({
        url: '/getPostsSelf',
        type: "POST",
        success: (posts) => {
            console.log(posts)
            $('.post-output-container-main').html('')
            posts.forEach(post => {
                //-main container 
                const mainContainer = document.createElement('div')
                mainContainer.className = 'post-container'
                mainContainer.id = post.post_id

                //?user details row
                const userRow = document.createElement('div')
                userRow.className = 'user-row'

                //?user profile pic main container 
                const userImageContainer = document.createElement('div')
                userImageContainer.className = 'user-image-container'

                //?user profile pic container inside
                const userImage = document.createElement('img')
                userImage.className = 'user-image'
                userImage.src = "/static/uploads/" + post.profile_pic

                //-appending user image to the user image main container 
                userImageContainer.append(userImage)

                //?container for displaying name of the user 
                const userName = document.createElement('div')
                userName.className = 'user-name-container'
                userName.innerHTML = post.name

                //?container for displaying username of the user
                const username = document.createElement('div')
                username.className = 'username-container_'
                username.innerHTML = post.username

                //-appending user profile pic, user name and username to the user row container 
                userRow.append(userImageContainer, userName, username)

                //-caption container
                const caption = document.createElement('div')
                caption.className = 'post-caption-container'
                caption.innerText = post.caption

                //-content container
                const content = document.createElement('div')
                content.className = 'post-content-container'
                content.innerText = post.content

                //-tool container 
                const tools = document.createElement('div')
                tools.className = 'tools-container'

                //? comment container 
                const commentIcon = document.createElement('div')
                commentIcon.className = 'comment-icon-container'
                commentIcon.id = post.post_id

                //? time container
                const date = new Date(post.time)
                const dayOfWeek = date.toLocaleString('en-us', {weekday: 'short'}); // get the abbreviated day of the week
                const dayOfMonth = date.getDate(); 
                const month = date.toLocaleString('en-us', {month: 'short'}); // get the abbreviated month
                const year = date.getFullYear(); 
                const hours = date.getHours(); 
                const minutes = date.getMinutes(); 
                const ampm = hours >= 12 ? 'PM' : 'AM'; 
                const formattedHours = hours % 12 || 12;
                const formattedMinutes = minutes < 10 ? '0' + minutes : minutes; 

                const formattedDate = `${dayOfWeek}, ${dayOfMonth} ${month} ${year}`;
                const formattedTime = `${formattedHours}:${formattedMinutes} ${ampm}`; 
                const formattedDateTime = `${formattedDate} ${formattedTime}`;

                const time = document.createElement('div')
                time.className = 'time-container'
                time.innerText = formattedDateTime

                //-appending comment and time container to the tools container
                tools.append(commentIcon, time)

                //-appending all containers to the main container
                mainContainer.append(userRow)
                mainContainer.append(caption)
                mainContainer.append(content)
                mainContainer.append(tools)
                $('.list-own-post-container').append(mainContainer)
            })
        }
    })
}
getPosts()


// -update password

$.each($('.registration-input-password'), (index, item) => {
    $(item).keyup(()=>{
        let oldPassword = $('.old-password').val()
        let newPassword = $('.new-password').val()
        let confirmPassword = $('.confirm-password').val()
        $.ajax({
            url: '/updatePassword',
            type: "POST",
            data : {
              oldPassword: oldPassword,
              newPassword: newPassword,
              confirmPassword: confirmPassword,
              submit: false
            },
            success: (data)=>{
                let errorContainer = $('.password-update-container-main error')
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
    $('.reg-submit-password').click(()=>{
        let oldPassword = $('.old-password').val()
        let newPassword = $('.new-password').val()
        let confirmPassword = $('.confirm-password').val()
        $.ajax({
          url: '/updatePassword',
          type: "POST",
          data : {
            oldPassword: oldPassword,
            newPassword: newPassword,
            confirmPassword: confirmPassword,
            submit: true
          },
          success: (data)=>{
              if(data == 'success'){
              location.href = "profile?message=profile_update_successful&duration=3000"
              }
              else{
                  let errorContainer = $('.password-update-container-main error')
                  $.each(errorContainer, (index, error) => {
                      $(error).html(data[index])
                  })
              }
          }
      })
    })
})
// -feedback 
document.querySelector('.feedback-send-btn').addEventListener('click', (e) => {
    const feedbackSub = $('.feedback-sub').val()
    const feedbackContent = $('.feedback-content').val()
    $.ajax({
        url: '/sendFeedback',
        type: "POST",
        data: {
            feedbackSub: feedbackSub,
            feedbackContent: feedbackContent
        },
        success: (data) => {
            if(data == 'success'){
                popup("feedback send successfully", 'blue', '3s')
                $('.feedback-container-main error').each((i, error) => {
                    error.innerText = ''
                })
                $('.feedback-sub').val('')
                $('.feedback-content').val('') 
            } else {
                $('.feedback-container-main error').each((i, error) => {
                    error.innerText = data[i]
                })
            }
        }
    })
})
//  -ocr js end 