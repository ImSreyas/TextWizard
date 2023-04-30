// -post
$(".post-btn").click(() => {
  const caption = $(".caption-input").val();
  const content = $(".post-content-input").val();

  $.ajax({
    url: "/addPost",
    type: "POST",
    data: {
      caption: caption,
      content: content,
    },
    success: (data) => {
      if (data == "success") {
        popup("post added successfully", "green", "3s");
        $(".caption-input").val("");
        $(".post-content-input").val("");
        $(".post-input-container-main error").each((i, error) => {
          error.innerText = "";
        });
        getPosts();
      } else if (data == "not logged in") {
        location.href = "/login";
      } else {
        $(".post-input-container-main error").each((i, error) => {
          error.innerText = data[i];
        });
      }
    },
  });
});
function getPosts() {
  $.ajax({
    url: "/getPosts",
    type: "POST",
    success: (posts) => {
      $(".post-output-container-main").html("");
      $(".list-own-post-container").html("");
      posts.forEach((post) => {
        //-main container
        const mainContainer = document.createElement("div");
        mainContainer.className = "post-container";
        mainContainer.id = post.post_id;

        //?user details row
        const userRow = document.createElement("div");
        userRow.className = "user-row";

        //?user profile pic main container
        const userImageContainer = document.createElement("div");
        userImageContainer.className = "user-image-container";

        //?user profile pic container inside
        const userImage = document.createElement("img");
        userImage.className = "user-image";
        userImage.src = "/static/uploads/" + post.profile_pic;

        //-appending user image to the user image main container
        userImageContainer.append(userImage);

        //?container for displaying name of the user
        const userName = document.createElement("div");
        userName.className = "user-name-container";
        userName.innerHTML = post.name;

        //?container for displaying username of the user
        const username = document.createElement("div");
        username.className = "username-container_";
        username.innerHTML = post.username;

        //-appending user profile pic, user name, username and delete btn to the user row container
        userRow.append(userImageContainer, userName, username);

        //-caption container
        const caption = document.createElement("div");
        caption.className = "post-caption-container";
        caption.innerText = post.caption;

        //-content container
        const content = document.createElement("div");
        content.className = "post-content-container";
        content.innerText = post.content;

        //-tool container
        const tools = document.createElement("div");
        tools.className = "tools-container";

        //? comment container
        const commentIcon = document.createElement("div");
        commentIcon.className = "comment-icon-container";
        commentIcon.id = post.post_id;
        commentIcon.setAttribute("show", false);

        //? time container
        const date = new Date(post.time);
        const dayOfWeek = date.toLocaleString("en-us", { weekday: "short" }); // get the abbreviated day of the week
        const dayOfMonth = date.getDate();
        const month = date.toLocaleString("en-us", { month: "short" }); // get the abbreviated month
        const year = date.getFullYear();
        const hours = date.getHours();
        const minutes = date.getMinutes();
        const ampm = hours >= 12 ? "PM" : "AM";
        const formattedHours = hours % 12 || 12;
        const formattedMinutes = minutes < 10 ? "0" + minutes : minutes;

        const formattedDate = `${dayOfWeek}, ${dayOfMonth} ${month} ${year}`;
        const formattedTime = `${formattedHours}:${formattedMinutes} ${ampm}`;
        const formattedDateTime = `${formattedDate} ${formattedTime}`;

        const time = document.createElement("div");
        time.className = "time-container";
        time.innerText = formattedDateTime;

        //-appending comment and time container to the tools container
        tools.append(commentIcon, time);

        //? creating the comment container
        const commentContainer = document.createElement("div");
        commentContainer.className = "comment-container";
        commentContainer.id = post.post_id;
        commentContainer.setAttribute("show", false);

        //?creating a wrapper inside the comment container
        const commentWrapper = document.createElement("div");
        commentWrapper.className = "comment-wrapper";

        //? creating each of the components
        //*comments

        $.ajax({
          url: "/getComments",
          type: "POST",
          data: {
            postId: post.post_id,
          },
          success: ([response, userId]) => {
            $.each(response, (index, res) => {
              if (res) {
                const individualCommentWrapper = document.createElement("div");
                commentWrapper.append(individualCommentWrapper);
                individualCommentWrapper.className = "individualCommentWrapper";

                const individualCommentTopBar = document.createElement("div");
                individualCommentWrapper.append(individualCommentTopBar);
                individualCommentTopBar.className = "individualCommentTopBar";

                const profilePicContainer = document.createElement("div");
                individualCommentTopBar.append(profilePicContainer);
                profilePicContainer.className =
                  "individual-profile-pic-container";

                const profilePic = document.createElement("img");
                profilePicContainer.append(profilePic);
                profilePic.className = "individual-profile-pic";
                profilePic.src = "/static/uploads/" + res.profile_pic;

                const name = document.createElement("span");
                individualCommentTopBar.append(name);
                name.className = "individual-comment-name";
                name.innerText = res.name;

                const username = document.createElement("span");
                individualCommentTopBar.append(username);
                username.className = "individual-comment-username";
                username.innerText = res.username;

                const content = document.createElement("div");
                individualCommentWrapper.append(content);
                content.className = "individual-comment-content";
                content.innerText = res.text;

                const date = new Date(res.time);
                const dayOfWeek = date.toLocaleString("en-us", {
                  weekday: "short",
                }); // get the abbreviated day of the week
                const dayOfMonth = date.getDate();
                const month = date.toLocaleString("en-us", { month: "short" }); // get the abbreviated month
                const year = date.getFullYear();
                const hours = date.getHours();
                const minutes = date.getMinutes();
                const ampm = hours >= 12 ? "PM" : "AM";
                const formattedHours = hours % 12 || 12;
                const formattedMinutes = minutes < 10 ? "0" + minutes : minutes;

                const formattedDate = `${dayOfWeek}, ${dayOfMonth} ${month} ${year}`;
                const formattedTime = `${formattedHours}:${formattedMinutes} ${ampm}`;
                const formattedDateTime = `${formattedDate} ${formattedTime}`;

                const individualCommentBottomBar =
                  document.createElement("div");
                individualCommentWrapper.append(individualCommentBottomBar);
                individualCommentBottomBar.className =
                  "individualCommentBottomBar";

                const time = document.createElement("div");
                individualCommentBottomBar.append(time);
                time.className = "individual-comment-time";
                time.innerText = formattedDateTime;

                if (userId == res.user_id) {
                  const individualCommentDeleteBtn =
                    document.createElement("button");
                  individualCommentBottomBar.append(individualCommentDeleteBtn);
                  individualCommentDeleteBtn.className =
                    "individual-comment-delete-btn";
                  individualCommentDeleteBtn.id = res.comment_id;
                  individualCommentDeleteBtn.innerText = "Delete";

                  //comment delete btn click event listener
                  individualCommentDeleteBtn.addEventListener("click", (e) => {
                    $.ajax({
                      url: "/deleteComment",
                      type: "POST",
                      data: {
                        commentId: res.comment_id,
                      },
                      success: (data) => {
                        console.log(data);
                        const $comment = $(individualCommentWrapper);
                        $comment.addClass("removed");
                        popup("comment deleted successfully", "blue", "3s");
                      },
                    });
                  });
                }
              } else {
                const noCommentsFound = document.createElement("div");
                commentWrapper.append(noCommentsFound);
                noCommentsFound.className = "no-comments-found-container";
              }
            });
          },
        });

        //* input container
        const addCommentInputContainer = document.createElement("div");
        addCommentInputContainer.className = "add-comment-input-container";

        //* input
        const addCommentInput = document.createElement("input");
        addCommentInput.type = "text";
        addCommentInput.className = "add-comment-input";
        addCommentInput.placeholder = "Type something...";

        //* add comment button
        const addCommentBtn = document.createElement("button");
        addCommentBtn.className = "add-comment-btn";
        addCommentBtn.id = post.post_id;

        //appending input and send button to the wrapper
        addCommentInputContainer.append(addCommentInput, addCommentBtn);
        commentWrapper.append(addCommentInputContainer);
        //appending both wrapper to the commentContainer
        commentContainer.append(commentWrapper);

        //-appending all containers to the main container
        mainContainer.append(
          userRow,
          caption,
          content,
          tools,
          commentContainer
        );
        $(".post-output-container-main").append(mainContainer);
      });
      everythingLoaded();
    },
  });
}
getPosts();

const everythingLoaded = () => {
  const commentButtons = document.querySelectorAll(".comment-icon-container");
  commentButtons.forEach((btn) => {
    btn.addEventListener("click", () => {
      const btnId = btn.id;
      btn.setAttribute(
        "show",
        btn.getAttribute("show") === "false" ? true : false
      );
      const commentBtnContainer = $(`#${btnId}.comment-container`);
      commentBtnContainer.attr(
        "show",
        commentBtnContainer.attr("show") === "false" ? true : false
      );
      if (commentBtnContainer.attr("show") === "true") {
        const commentWrapperHeight = $(
          `#${btnId}.comment-container .comment-wrapper`
        ).height();
        commentBtnContainer.css({
          height: `calc(${commentWrapperHeight}px + 1rem)`,
          paddingBlock: "1rem",
        });
      } else {
        commentBtnContainer.css({
          height: "0",
          paddingBlock: "0rem",
        });
      }
    });
  });

  //if the enter is clicked on the input field. it will automatically trigger the very next send btn. then it will add the comment
  const ibs = $(".add-comment-input");
  $.each(ibs, (index, input) => {
    input.addEventListener("keydown", (e) => {
      if (e.key == "Enter") {
        input.nextSibling.click();
      }
    });
  });
  //adding comment for a post
  const cbs = $(".add-comment-btn");
  $.each(cbs, (index, btn) => {
    const input = btn.previousSibling;
    const id = btn.id;
    btn.addEventListener("click", () => {
      input.value &&
        $.ajax({
          url: "/addPostComment",
          type: "POST",
          data: {
            commentContent: input.value,
            postId: id,
          },
          success: (data) => {
            if (data == "success") {
              popup("comment added successfully", "green", "4s");

              getPosts();
              window.setTimeout(() => {
                const commentIcon = $(`#${id}.comment-icon-container`);
                commentIcon.click();

                const btn = $(`#${id}.add-comment-btn`);
                const inputBtn = btn.closest(".add-comment-input");

                inputBtn.value = "";
                inputBtn.click();
              }, 300);
            } else {
              popup("please login to add a comment!", "blue", "4s");
            }
          },
        });
    });
  });
};
