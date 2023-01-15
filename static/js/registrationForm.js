let optionContainer = document.querySelectorAll('.gender-container button')
Array.prototype.forEach.call(optionContainer, option => {
    option.addEventListener('click', (e) => {
        Array.prototype.forEach.call(optionContainer, option => {
            option.setAttribute('selected', false)
        })
        e.target.setAttribute('selected', true)
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
        $.ajax({
            url: '/registration',
            type: "POST",
            data : {
                name: name,
                gender: gender,
                address: address,
                phone: phone,
                email: email,
                username: username,
                password: password,
                confirmPassword: confirmPassword
            },
            success: (data)=>{
                if(data == 'success'){
                   location.href = "/login?from='account_created'"
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