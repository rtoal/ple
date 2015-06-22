// Rookie mistake: alerts 10 for every button.
for (var i = 0; i < 10; i++) {
  button = document.createElement("button");
  button.innerHTML = i;
  button.onclick = function () {alert(i);};
  document.body.appendChild(button);
}
