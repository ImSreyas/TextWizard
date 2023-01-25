function userLogin(){
    let username = document.querySelector('.username').value
    let password = document.querySelector('.password').value
    $.ajax({
        url: '/login',
        type: "POST",
        data: {
            username : username,
            password : password
        },
        success: (data)=>{
            if(data == 'user')
                location.href = "/index?message=logging_in&duration=5000"
            else if(data == 'admin')
                location.href = "/admin?message=logging_in&duration=5000"
            else{
                let errorContainer = $('error')
                $.each(errorContainer, (i, error) => {
                    $(error).html(data[i])
                })
            }
        }
    })
}