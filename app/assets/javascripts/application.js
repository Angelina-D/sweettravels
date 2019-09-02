//= require rails-ujs
//= require_tree .

document.querySelectorAll(".form-charity-label").forEach((label) => {
  console.log(label);
    console.log("check");
  label.addEventListener("click", (event) => {
    if (label.classList.contains(".active")){
      label.classList.remove("active");
      console.log("blabla")
    };
    if (true){
      console.log("true")
    }
    event.currentTarget.classList.toggle("active")
  });
});
