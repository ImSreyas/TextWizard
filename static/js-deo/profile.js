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
            url: '/deo/updateProfile',
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
            url: '/deo/updateProfile',
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
                location.href = "profile?message=profile_update_successful&duration=3000"
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
// -update password

$.each($('.registration-input-password'), (index, item) => {
    $(item).keyup(()=>{
        let oldPassword = $('.old-password').val()
        let newPassword = $('.new-password').val()
        let confirmPassword = $('.confirm-password').val()
        $.ajax({
            url: '/deo/updatePassword',
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
          url: '/deo/updatePassword',
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
        url: '/deo/sendFeedback',
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
// - quick settings on top
const quickSettingsButtonsContainers = [
  document.querySelector(".profile-update-container-main"),
  document.querySelector(".password-update-container-main"),
  document.querySelector(".feedback-container-main"),
];
const quickSettingsButtons = document.querySelectorAll(
  ".quick-settings-container div"
);
quickSettingsButtons.forEach((btn, index) => {
  btn.addEventListener("click", () => {
    const offset = quickSettingsButtonsContainers[index].offsetTop;
    window.scrollTo({
      top: offset,
      behavior: "smooth",
    });
  });
});