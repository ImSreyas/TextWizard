let currentPage = window.location.href
currentPage = currentPage.split('/')
currentPage = currentPage[currentPage.length - 1]
let count = 0
let nav = document.querySelectorAll('#nav-item')
nav.forEach(n => {
    let name = n.getAttribute('nav')
    if(name == currentPage) 
        n.classList.add('nav-highlight')
    else count++
})
let login = [
    'registration'
]

login.forEach(item => {
    if(item == currentPage) nav[4].classList.add('nav-highlight')
})
