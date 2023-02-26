const body = document.querySelector('body')
function chooseAnimation(){
    const originalTheme = body.getAttribute('theme')
    const animationCards = document.querySelectorAll('.animation-theme')
    animationCards.forEach(card => {
        let theme = card.getAttribute('animation')
        if (theme != originalTheme) card.style.display = 'none'
        else card.style.display = 'block'
    })
}
chooseAnimation()
const button = document.querySelector('.theme-button')
button.addEventListener('click', (e) => {
    if(e.target.getAttribute('themeMode') == 'dark'){
        e.target.classList.remove('theme-button-day')
        e.target.setAttribute('themeMode', 'white')
        e.target.classList.add('theme-button-night')
        body.setAttribute('theme', 'darkGreen')
        $.ajax({
            url: '/theme/darkGreen',
            type: "GET",
            data: {},
            success: ()=>{
                chooseAnimation()
            }
        })
    }
    else{
        e.target.classList.remove('theme-button-night')
        e.target.setAttribute('themeMode', 'dark')
        e.target.classList.add('theme-button-day')
        body.setAttribute('theme', 'yellow')
        $.ajax({
            url: '/theme/yellow',
            type: "GET",
            data: {},
            success: ()=>{
                chooseAnimation()
            }
        })
    }
})
