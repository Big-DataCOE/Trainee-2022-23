let add = document.querySelector("#Add");
let subtract = document.querySelector("#Sub");
let result = 0;
output.innerText = result;
add.addEventListener("click", function () {
    let output = document.querySelector("#output");
    result = Number(output.innerText) + 1;
  
    output.innerText = result;
  });
subtract.addEventListener("click", function () {
    let output = document.querySelector("#output");
    let result = Number(output.innerText) - 1;
    if(result<0){
        result=0;
    }
    output.innerText = result;
  });
reset.addEventListener("click", function () {
    output = document.querySelector("#output");
    result = 0;
  
    output.innerText = result;
  });
console.log(add, subract);