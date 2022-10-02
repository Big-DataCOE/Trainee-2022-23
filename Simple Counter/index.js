let add = document.getElementById("btnl");
let minus = document.getElementById("btnr");
let int = document.getElementById("center");
let res = document.getElementById("btn1");
let count = 0;
add.addEventListener('click', function () {
    count += 1;
    int.innerHTML = count;
})
minus.addEventListener('click', function () {
    count -= 1;
    int.innerHTML = count;
})
res.addEventListener('click', function () {
    count = 0;
    int.innerHTML = count;
})