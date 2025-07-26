var progress = document.getElementById("progress");
var Form1 = document.getElementById("Form1");
var Form2 = document.getElementById("Form2");
var Form3 = document.getElementById("Form3");
var Form4 = document.getElementById("Form4");

var Next1 = document.getElementById("Next1");
var Next2 = document.getElementById("Next2");
var Next3 = document.getElementById("Next3");
var Next4 = document.getElementById("Next4");

var Back1 = document.getElementById("Back1");
var Back2 = document.getElementById("Back2");
var Back3 = document.getElementById("Back3");

var one = document.querySelector(".one");
var two = document.querySelector(".two");
var three = document.querySelector(".three");
var four = document.querySelector(".four");
one.style.color="white"

Next1.addEventListener("click", () =>{
    Form1.style.left="-450px";
    Form2.style.left="0";
    progress.style.width="172px";
    setTimeout(() =>{
        one.style.color="black";
        two.style.color="white";
    }, 400)
});

Back1.addEventListener("click", () =>{
    Form1.style.left="0";
    Form2.style.left="450px";
    progress.style.width="84px";
    two.style.color="black";
    one.style.color="white";
});

Next2.addEventListener("click", () =>{
    Form2.style.left="-450px";
    Form3.style.left="0";
    progress.style.width="260px";
    setTimeout(() =>{
        two.style.color="black";
        three.style.color="white";
    }, 400)
});

Back2.addEventListener("click", () =>{
    Form2.style.left="0px";
    Form3.style.left="450px";
    progress.style.width="173px";
    two.style.color="white";
    three.style.color="black";
});

Next3.addEventListener("click", () =>{
    Form3.style.left="-450px";
    Form4.style.left="0";
    progress.style.width="360px";
    four.style.color="white";
    three.style.color="black";
});

Back3.addEventListener("click", ()=>{
    Form3.style.left="0";
    Form4.style.left="450px";
    progress.style.width="265px";
    three.style.color="white";
    four.style.color="black";
});