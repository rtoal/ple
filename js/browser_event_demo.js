var button = document.createElement('button');
var number = document.createElement('div')
button.innerHTML = 'Hello';
button.onmouseover = function () {
    button.style.backgroundColor = 'green';
}
button.onmouseout = function () {
    button.style.backgroundColor = 'white';
}
button.onclick = function () {
    number.innerHTML = Math.random();
}
document.body.appendChild(button);
document.body.appendChild(number);