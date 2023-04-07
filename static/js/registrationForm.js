let optionContainer = document.querySelectorAll('.gender-container button')
Array.prototype.forEach.call(optionContainer, option => {
    option.addEventListener('click', (e) => {
        Array.prototype.forEach.call(optionContainer, option => {
            option.setAttribute('selected', false)
        })
        e.target.setAttribute('selected', true)
        ajaxCallWhenOptionSelected()
    })
})

let userTypeOptionContainer = document.querySelectorAll('.user-type-container button')
Array.prototype.forEach.call(userTypeOptionContainer, option => {
    option.addEventListener('click', (e) => {
        Array.prototype.forEach.call(userTypeOptionContainer, option => {
            option.setAttribute('selected', false)
        })
        e.target.setAttribute('selected', true)
        ajaxCallWhenOptionSelected()
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
            url: '/registration',
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
            url: '/registration',
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
                submit: true
            },
            success: (data)=>{
                if(data == 'success'){
                location.href = "/login?message=registration_successful&duration=5000"
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



function ajaxCallWhenOptionSelected(){
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
        url: '/registration',
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
            if(data[4] == "please enter a username"){
                return
            }
            $(errorContainer[4]).html(data[4])
        }
    })
}