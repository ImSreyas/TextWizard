let currentPage = window.location.href
currentPage = currentPage.split('/')
currentPage = currentPage[currentPage.length - 1]
let count = 0
let nav = document.querySelectorAll('#nav-item')
nav.forEach(n => {
    let name = n.getAttribute('nav')
    console.log(currentPage)
    console.log(name)
    if(currentPage.includes(name)) 
        n.classList.add('nav-highlight')
})
let login = [
    'registration'
]

login.forEach(item => {
    if(currentPage.includes(item)) nav[4].classList.add('nav-highlight')
})
