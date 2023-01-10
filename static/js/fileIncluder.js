function include() {
  let z, i, e, file, xhttp;
  /* Loop through a collection of all HTML elements: */
  z = document.getElementsByTagName("*");
  for (i = 0; i < z.length; i++) {
    e = z[i];
    /*search for elements with a certain atrribute:*/
    file = e.getAttribute("include");
    if (file) {
      /* Make an HTTP request using the attribute value as the file name: */
      xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function() {
        if (this.readyState == 4) {
          if (this.status == 200) e.innerHTML = this.responseText
          if (this.status == 404) e.innerHTML = "Page not found."
          /* Remove the attribute, and call this function once more: */
        //   e.removeAttribute("w3-include-html");
        //   include()
        }
      }
      xhttp.open("GET", file, true);
      xhttp.send();
      /* Exit the function: */
      return;
    }
  }
}
