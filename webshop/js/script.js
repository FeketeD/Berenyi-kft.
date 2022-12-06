function ablakNyit() {
    document.getElementById("myForm").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}

function ablakBezar() {
    document.getElementById("myForm").style.display = "none";
    document.getElementById("myOverlay").style.display="none";
}

function orderFinish() {
    document.getElementById("myForm").style.display = "none";
    document.getElementById("myOverlay").style.display="none";
    window.location = "rendel.html"
}

var cards = document.querySelectorAll('.card');

[...cards].forEach((card)=>{
  card.addEventListener( 'click', function() {
    card.classList.toggle('is-flipped');
  });
});

var count = 1;
function myFunction() {
  if (count<10) {
    count++;
  }
  else {
    alert("Dev's:\nFekete Dániel\nBalázs Máté\nOláh Márk");
    count = 1;
  }
};


var a = 0;

console.log(Fname, loc)

function mouseOver(){
    
    const Fname = document.forms['suForm']['teljesnev'].value;
    const loc = document.forms['suForm']['telep'].value;
    const koz = document.forms['suForm']['kozter'].value;
    const haz = document.forms['suForm']['hSzam'].value;
    const phone = document.forms['suForm']['telefon'].value;

    if((Fname == "" || loc == "" || koz == "" || haz == "" || phone == "") && a==0){
      buttonMoveLeft();
      a = 1;
      console.log(Fname)
      return false;
    } 

    if((Fname == "" || loc == "" || koz == "" || haz == "" || phone == "") && a==1){
      buttonMoveRight();
      a = 2;
      return false;
    } 

    if((Fname == ""|| loc == "" || koz == "" || haz == "" || phone == "") && a==2){
      buttonMoveLeft();
      a = 1;
      return false;
    } 

    else{

        document.getElementById('submit-btn').click();  
        document.getElementById('submit-btn').style.cursor = 'pointer';
        return false;
    };

};  

function buttonMoveLeft(){

    const button = document.getElementById('submit-btn');
    button.style.transform = 'translateX(-360%)';

};


function buttonMoveRight(){

    const button = document.getElementById('submit-btn');
    button.style.transform = 'translateX(360%)';

};


function resetBtn(){
    const button = document.getElementById('submit-btn');
    button.style.transform = 'translateX(0%)';
};