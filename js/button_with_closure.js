for (var i = 0; i < 10; i++) {
  let button = document.createElement("button");
  button.innerHTML = i;
  button.onclick = (function (i) {
    return function () {alert(i);}
  }(i));
  document.body.appendChild(button);
}
