document.addEventListener('DOMContentLoaded', function(){

  const pullDownButton = document.getElementById("lists")
  const pullDownParents = document.getElementById("pull-down")

  pullDownButton.addEventListener('mouseover', function(){
    this.setAttribute("style", "color:#4682B4;")
  })

  pullDownButton.addEventListener('mouseout', function(){
    this.setAttribute("style", "color:white;")
  })

  pullDownButton.addEventListener('click', function(){
    if (pullDownParents.getAttribute("style") == "display:block;") {
      pullDownParents.removeAttribute("style", "display:block")
    } else {
      pullDownParents.setAttribute("style", "display:block;")
    }    
  });
}) 