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




let req = [
    'request'
]

req.forEach(item => {
    if(item.includes(currentPage)) nav[1].classList.add('nav-highlight')
})
