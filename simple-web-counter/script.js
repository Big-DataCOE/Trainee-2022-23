alert("welcome to my web counter");
var a;
var b = 0;
a = document.getElementById("count");
document.getElementById("plus").addEventListener("click", plus);
function plus() {
  b = b + 1;
  a.innerText = b;
}
document.getElementById("minus").addEventListener("click", minus);
function minus() {
  b = b - 1;
  a.innerText = b;
}
document.getElementById("reset").addEventListener("click", reset);
function reset() {
  b = 0;
  a.innerText = b;
}
