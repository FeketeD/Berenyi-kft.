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
    alert('Köszönjük a rendelésed, hamaron kiszállítjuk!');
}