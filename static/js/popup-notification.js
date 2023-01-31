function popup(str ='something went wrong', color = 'green', time='5s'){
    //-MAIN container
    const mainPopupContainer = document.createElement('div')
    //?checking the color 
    if(color == 'green') color = '#39ae54'
    else if(color == 'red') color = '#d40b1f'
    else color = '#00b1de'
    if(str == 'something went wrong') color = '#d11124'
    let popups = document.querySelectorAll('.popup-container')
    popups = Array.prototype.slice.call(popups)
    popups.reverse()
    let addOn = 0 
    popups.forEach((pop, index) =>{
        if(index == 0) addOn = 1.2
        addOn += 4
        pop.style.bottom = addOn+'rem'
    })
    mainPopupContainer.style.animationDuration = time
    mainPopupContainer.style.backgroundColor = color
    mainPopupContainer.classList.add('popup-container')

    //*TEXT container inside 
    const popupTextContainer = document.createElement('span')
    popupTextContainer.classList.add('popup-text-container')
    popupTextContainer.innerHTML = str
    mainPopupContainer.appendChild(popupTextContainer)
    
    //*CLOSE BUTTON container inside
    const closePopupButtonContainer = document.createElement('button')
    closePopupButtonContainer.classList.add('close-popup-button-container')
    mainPopupContainer.appendChild(closePopupButtonContainer)

    //-selecting BODY to append the popup notification
    const body = document.querySelector('body')
    body.appendChild(mainPopupContainer)

    //* CLOSE BUTTON clicked event listener
    closePopupButtonContainer.addEventListener('click', () => {
        mainPopupContainer.style.display = 'none'
    })
}