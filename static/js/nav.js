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