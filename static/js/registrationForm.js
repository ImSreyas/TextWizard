let optionContainer = document.querySelectorAll('.gender-container button')
Array.prototype.forEach.call(optionContainer, option => {
    console.log('hello')
    option.addEventListener('click', (e) => {
        Array.prototype.forEach.call(optionContainer, option => {
            option.setAttribute('selected', false)
        })
        e.target.setAttribute('selected', true)
    })
})