(function () {
  "use strict";
  let canvas = document.createElement('canvas');
  let context = canvas.getContext('2d');
  let drawing = false;
  canvas.style.border = '2px solid green';
  canvas.onmousedown = (e) => {
    drawing = true;
    context.moveTo(e.clientX, e.clientY);
  };
  canvas.onmousemove = (e) => {
    if (drawing) {
      context.lineTo(e.clientX, e.clientY);
      context.stroke();
    }
  };
  canvas.onmouseup = canvas.onmouseout = () => {
    drawing = false;
  };
  document.body.appendChild(canvas);
}());
