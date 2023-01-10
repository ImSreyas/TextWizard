let currentPage = window.location.href
currentPage = currentPage.split('/')
currentPage = currentPage[currentPage.length-1]+'-nav-item'
const item = document.getElementById(currentPage)
item.classList.add('nav-highlight')
