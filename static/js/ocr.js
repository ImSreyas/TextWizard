let container = document.querySelector(".drag-and-drop-icon-container");
let fileChangeListenerAdded = false;

container.addEventListener("click", () => {
  const input = document.querySelector(".image-input");
  input.click();

  const handleFileChange = () => {
    const file = input.files[0];
    const url = URL.createObjectURL(file);
    const img = document.createElement("img");
    img.src = url;
    let imageItems = document.querySelectorAll(
      ".drag-and-drop-icon-container img"
    );
    imageItems.forEach((item) => item.remove());
    document.querySelector(".drag-and-drop-icon-container").append(img);

    // Remove the existing event listener for the "Convert" button
    const convertBtn = document.querySelector(".convert-btn");
    convertBtn.removeEventListener("click", convertImage);

    // Add a new event listener for the "Convert" button
    convertBtn.addEventListener("click", convertImage);

    fileChangeListenerAdded = true;
  };

  if (!fileChangeListenerAdded) {
    // Check if the event listener has already been added
    input.addEventListener("change", handleFileChange);
  }
});

function convertImage() {
  // Get the selected image file
  const input = document.querySelector(".image-input");
  const file = input.files[0];

  // Create a new FormData object
  const formData = new FormData();
  // Add the image file to the form data
  formData.append("file", file);

  const language = document
    .querySelector(".language-list-container option[selected='true']")
    .getAttribute("val");
  formData.append("language", language);

  $.ajax({
    url: "/ocrCore",
    type: "POST",
    data: formData,
    processData: false,
    contentType: false,
    success: ([data, id]) => {
      document.querySelector(".content-bar").style.display = "grid";
      document.querySelector(".content-bar").id = id;
      // Split the OCR output into lines
      const lines = data.split("\n");
      const para = document.querySelectorAll(".text-content p");
      para.forEach((p) => {
        p.remove();
      });
      // Display each line on a separate line in the browser
      for (const line of lines) {
        const p = document.createElement("p");
        p.textContent = line;
        $(".text-content").append(p);
      }
      const offsetTop = $(".content-bar").offset().top
      window.scrollTo({
        top: offsetTop - 80,
        behavior: "smooth"
      })
    },
  });
}

// -language dropdown start

const langBtn = document.querySelector(".language-btn");
const langListContainer = document.querySelector(".language-list-container");

langBtn.addEventListener("click", () => {
  const inputBtn = document.querySelector(".language-search-input-field");
  if (langListContainer.getAttribute("vis") == "false")
    langListContainer.setAttribute("vis", "true");
  else langListContainer.setAttribute("vis", "false");
  inputBtn.focus();
});

// -search in language list

const searchField = document.querySelector(".language-search-input-field");
searchField.addEventListener("keyup", () => {
  const optionList = document.querySelectorAll(
    ".language-list-container option"
  );
  optionList.forEach((option) => {
    option.style.display = "none";
  });
  optionList.forEach((option) => {
    if (
      option.innerText.toLowerCase().includes(searchField.value.toLowerCase())
    ) {
      option.style.display = "block";
    }
  });
});

// -option selection
const optionList = document.querySelectorAll(".language-list-container option");
optionList.forEach((option) => {
  option.addEventListener("click", (e) => {
    optionList.forEach((op) => {
      op.setAttribute("selected", "false");
    });
    e.target.setAttribute("selected", "true");
    document
      .querySelector(".language-list-container")
      .setAttribute("vis", "false");
    const langBtn = document.querySelector(".language-name-shower");
    langBtn.innerText = e.target.innerText;
  });
});
// -language dropdown end
//- file format selection

const formatSelectorBtn = document.querySelector(".file-format-container");
const optionContainer = document.querySelector(".file-format-option-container");
formatSelectorBtn.addEventListener("click", () => {
  if (optionContainer.getAttribute("vis") == "false")
    optionContainer.setAttribute("vis", "true");
  else optionContainer.setAttribute("vis", "false");
});

const options = document.querySelectorAll(
  ".file-format-option-container option"
);
options.forEach((option) => {
  option.addEventListener("click", (e) => {
    optionContainer.setAttribute("vis", "false");
    formatSelectorBtn.children[0].innerText = e.target.innerText;

    const text = getTextFromEditor();
    const fileName = document.querySelector(".file-name-input").value;
    switch (e.target.innerText) {
      case ".txt":
        txtDownload(text, fileName);
        break;
      case ".html":
        htmlDownload(text, fileName);
        break;
      case ".css":
        cssDownload(text, fileName);
        break;
      case ".csv":
        csvDownload(text, fileName);
        break;
      case ".json":
        jsonDownload(text, fileName);
        break;
      case ".xml":
        xmlDownload(text, fileName);
        break;
      case ".md":
        mdDownload(text, fileName);
        break;
      case ".pdf":
        pdf(
          document.querySelector(".txt-download-link"),
          getTextFromEditor(),
          document.querySelector(".file-name-input").value
        );
        break;
      default:
        txtDownload(text, fileName);
    }
  });
});
// -end of file format selection
// - download btn
// const downloadBtn = document.querySelector('.txt-download-link')
// downloadBtn.addEventListener('click', () => {
//   const textFormat = document.querySelector('.file-format-container .actualFileFormat').innerText
//   const text = getTextFromEditor()
//   const fileName = document.querySelector('.file-name-input').value
//   switch(textFormat){
//     case ".txt": txtDownload(text, fileName)
//     break
//     case ".html": htmlDownload(text, fileName)
//     break
//     case ".css": cssDownload(text, fileName)
//     break
//     case ".csv": csvDownload(text, fileName)
//     break
//     case ".json": jsonDownload(text, fileName)
//     break
//     case ".xml": xmlDownload(text, fileName)
//     break
//     case ".md": mdDownload(text, fileName)
//     break
//     case ".pdf": break;
//     default : txtDownload(text, fileName)
//   }
// })
//pdf function for getting pdf data
function pdf(downloadLink, data, fileName) {
  $.ajax({
    url: "/pdf",
    method: "POST",
    data: {
      data: data,
    },
    xhrFields: {
      responseType: "blob",
    },
    success: function (data) {
      var blob = new Blob([data], { type: "application/pdf" });
      var url = URL.createObjectURL(blob);
      downloadLink.href = url;
      downloadLink.download = fileName ? fileName + ".pdf" : "";
    },
    error: function (jqXHR, textStatus, errorThrown) {
      console.error("Failed to fetch PDF file:", errorThrown);
    },
  });
}

// - end of download btn
//? function for getting the text from editor
const getTextFromEditor = () => {
  let paragraphs = document.querySelectorAll(".text-content p");
  let data = "";
  paragraphs.forEach((p, index) => {
    data += p.innerText.trim();
    if (index < paragraphs.length - 1) {
      data += "\n"; // Add newline character if this is not the last paragraph
    }
  });
  return data;
};
//? txt download function
function txtDownload(data, fileName) {
  const downloadLink = document.querySelector(".txt-download-link");
  downloadLink.href = URL.createObjectURL(
    new Blob([data], { type: "text/plain" })
  );
  downloadLink.download = fileName ? fileName + ".txt" : "";
}
function htmlDownload(data, fileName) {
  const downloadLink = document.querySelector(".txt-download-link");
  downloadLink.href = URL.createObjectURL(
    new Blob([data], { type: "text/html" })
  );
  downloadLink.download = fileName ? fileName + ".html" : "";
}
function cssDownload(data, fileName) {
  const downloadLink = document.querySelector(".txt-download-link");
  downloadLink.href = URL.createObjectURL(
    new Blob([data], { type: "text/css" })
  );
  downloadLink.download = fileName ? fileName + ".css" : "";
}
function jsonDownload(data, fileName) {
  const downloadLink = document.querySelector(".txt-download-link");
  downloadLink.href = URL.createObjectURL(
    new Blob([data], { type: "application/json" })
  );
  downloadLink.download = fileName ? fileName + ".json" : "";
}
function xmlDownload(data, fileName) {
  const downloadLink = document.querySelector(".txt-download-link");
  downloadLink.href = URL.createObjectURL(
    new Blob([data], { type: "application/xml" })
  );
  downloadLink.download = fileName ? fileName + ".xml" : "";
}
function csvDownload(data, fileName) {
  const downloadLink = document.querySelector(".txt-download-link");
  downloadLink.href = URL.createObjectURL(
    new Blob([data], { type: "text/csv" })
  );
  downloadLink.download = fileName ? fileName + ".csv" : "";
}
function mdDownload(data, fileName) {
  const downloadLink = document.querySelector(".txt-download-link");
  downloadLink.href = URL.createObjectURL(
    new Blob([data], { type: "text/markdown" })
  );
  downloadLink.download = fileName ? fileName + ".md" : "unknown.md";
}

//-toolbox
//?copy
const copyBtn = document.querySelector(".tool-box .copy");
copyBtn.addEventListener("click", () => {
  navigator.clipboard.writeText(getTextFromEditor());
});
//?share
const shareBtn = document.querySelector(".tool-box .share");
if (shareBtn) {
  shareBtn.addEventListener("click", () => {
    const textFormat = document.querySelector(
      ".file-format-container-new .actualFileFormatNew"
    ).innerText;
    const shareList = document.querySelector(".share-list-container");
    if (shareList.getAttribute("vis") == "false")
      shareList.setAttribute("vis", "true");
    else shareList.setAttribute("vis", "false");
  });
}

const formatSelectorBtnNew = document.querySelector(
  ".file-format-container-new"
);
const optionContainerNew = document.querySelector(
  ".file-format-option-container-new"
);
if (formatSelectorBtnNew) {
  formatSelectorBtnNew.addEventListener("click", () => {
    if (optionContainerNew.getAttribute("vis") == "false")
      optionContainerNew.setAttribute("vis", "true");
    else optionContainerNew.setAttribute("vis", "false");
  });
}

const optionsNew = document.querySelectorAll(
  ".file-format-option-container-new option"
);
if (optionsNew) {
  optionsNew.forEach((option) => {
    option.addEventListener("click", (e) => {
      optionContainerNew.setAttribute("vis", "false");
      formatSelectorBtnNew.children[0].innerText = e.target.innerText;
    });
  });
}

// - select user
const users = document.querySelectorAll(".user-data-container");
users.forEach((user) => {
  user.addEventListener("click", (e) => {
    if (user.getAttribute("selected") == "true")
      user.setAttribute("selected", "false");
    else user.setAttribute("selected", "true");
  });
});
// -search
const userSearch = document.querySelector(".user-search");
if (userSearch) {
  userSearch.addEventListener("keyup", (e) => {
    let searchValue = e.target.value;
    searchValue = searchValue.toLowerCase();
    const userList = document.querySelectorAll(".user-data-container");
    userList.forEach((user) => {
      user.style.display = "none";
    });
    userList.forEach((user) => {
      if (
        (
          user.children[1].children[0].innerText +
          user.children[1].children[1].innerText
        )
          .toLowerCase()
          .includes(searchValue)
      ) {
        user.style.display = "grid";
      }
    });
  });
}
// -final share btn
const finalShare = document.querySelector(".share-btn-final");
if (finalShare) {
  finalShare.addEventListener("click", () => {
    const selectedUsers = document.querySelectorAll(
      ".user-data-container[selected='true']"
    );
    let selectedUserIds = [];
    selectedUsers.forEach((user) => {
      selectedUserIds.push(parseInt(user.id));
    });
    const fileName = document.querySelector(".file-name-input").value;
    const fileFormat = document.querySelector(
      ".file-format-container-new .actualFileFormatNew"
    ).innerHTML;
    const text = getTextFromEditor();
    $.ajax({
      url: "/share",
      type: "POST",
      data: {
        userList: JSON.stringify(selectedUserIds),
        text: text,
        fileName: fileName,
        fileFormat: fileFormat,
      },
      success: () => {
        const users = document.querySelectorAll(".user-data-container");
        users.forEach((user) => {
          user.setAttribute("selected", "false");
        });
        document
          .querySelector(".share-list-container")
          .setAttribute("vis", "false");
        popup("shared successfully", "green", "4s");
      },
    });
  });
}
$(".post").click((e) => {
  const text = getTextFromEditor();
  $.ajax({
    url: "/sharePost",
    type: "POST",
    data: {
      text: text,
    },
    success: () => {
      location.href = "/post";
    },
  });
});
//- file given
$(".send-text-to-deo-btn").click(() => {
  const id = $(".content-bar").attr("id");
  $.ajax({
    url: "/fileGiven",
    type: "POST",
    data: {
      id: id,
    },
    success: (data) => {
      data = parseInt(data);
      if (data) popup("request send successfully", "green", "3s");
      else popup("request canceled", "red", "3s");
      data = data == 1 ? "sended" : "send to data entry";
      $(".send-text-to-deo-btn").text(data);
    },
  });
});
