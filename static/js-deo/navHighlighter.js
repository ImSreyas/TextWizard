let currentPage = window.location.href
currentPage = currentPage.split('/')
currentPage = currentPage[currentPage.length - 1]
currentPage = currentPage.split('?')
currentPage = currentPage[0]
let count = 0
let nav = document.querySelectorAll('#nav-item')
nav.forEach(n => {
    let name = n.getAttribute('nav')
    if(currentPage.includes(name)) 
        n.classList.add('nav-highlight')
})
let login = [
    'registration'
]

login.forEach(item => {
    if(currentPage.includes(item)) nav[3].classList.add('nav-highlight')
})
