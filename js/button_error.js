// Rookie mistake using var: alerts 10 for every button.
for (var i = 0; i < 10; i++) {
  const button = document.createElement("button");
  button.innerHTML = i;
  button.addEventListener('click', e => {alert(i);});
  document.body.appendChild(button);
}
