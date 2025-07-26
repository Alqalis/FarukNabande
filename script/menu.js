var OpenMenu = document.getElementById("OpenMenu");
var CloseMenu = document.getElementById("CloseMenu");
var menu__list = document.querySelector(".menu__list");


OpenMenu.onclick = () =>{
    menu__list.style.right="0"
}

CloseMenu.onclick = () =>{
    menu__list.style.right="-350px";
}