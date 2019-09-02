//= require rails-ujs
//= require_tree .

document.querySelectorAll(".form-charity-label").forEach((label) => {
  label.addEventListener("click", (event) => {
    document.querySelectorAll(".form-charity-label").forEach((label) => {
      if (label.classList.contains("active")){
        label.classList.remove("active");
      };
    })

    event.currentTarget.classList.toggle("active")
  });
});

document.querySelectorAll(".form-label-donation").forEach((label) => {
  label.addEventListener("click", (event) => {
    document.querySelectorAll(".form-label-donation").forEach((label) => {
      if (label.classList.contains("active")){
        label.classList.remove("active");
      };
    })

    event.currentTarget.classList.toggle("active")
  });
});
