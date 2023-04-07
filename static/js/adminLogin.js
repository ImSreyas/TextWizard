document.querySelector('.submit-button').addEventListener('click', (e) => {
    e.preventDefault()
    userLogin()
})
function userLogin(){
    let username = document.querySelector('.username').value
    let password = document.querySelector('.password').value
    $.ajax({
        url: '/adminLogin',
        type: "POST",
        data: {
            username : username,
            password : password
        },
        success: (data)=>{
            if(data == 'success')
                location.href = "/admin?message=logging_in&duration=5000"
            else{
                let errorContainer = $('error')
                let inputContainer = $('.input')
                $.each(errorContainer, (i, error) => {
                    if(i != (data.length)-1)
                        if(data[i] == '') 
                            inputContainer[i+1].focus()
                    $(error).html(data[i])
                })
            }
        }
    })
}