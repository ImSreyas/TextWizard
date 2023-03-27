document.querySelector('.res-nav-button').addEventListener('click', (e) => {
    if(e.target.getAttribute('onoff') === 'true') e.target.setAttribute('onoff', 'false')
    else e.target.setAttribute('onoff', 'true')
})

const resNavigationButton = document.querySelector('.res-nav-button')
document.addEventListener('click', (e) =>{
    const resNav = document.querySelector('nav div')
    if(resNavigationButton.getAttribute('onoff') === 'true')
        if(e.target != resNav && e.target != resNavigationButton) 
            resNavigationButton.setAttribute('onoff', false)
})


//- js for logout dropdown functionalities

document.querySelector('.logout-btn').addEventListener('click', ()=> {
    const optionContainer = document.querySelector('.logout-option-container')
    if(optionContainer.getAttribute('visible') == 'true') optionContainer.setAttribute('visible', 'false')
    else optionContainer.setAttribute('visible', 'true')
})

document.querySelector('.goToLogout').addEventListener('click', ()=> {
   $.ajax({
    url: '/deo/deoLogout',
    type: 'GET',
    success: (data)=>{
        if(data == 'success') location.href='../index?message=logging_out&duration=4000'
    }
   })
})


