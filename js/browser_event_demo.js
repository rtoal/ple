(function () {
  var canvas = document.createElement('canvas');
  var ctx = canvas.getContext('2d');
  var drawing = false;
  canvas.style.border = '2px solid green';
  canvas.onmousedown = function (e) {
    drawing = true;
    ctx.moveTo(e.clientX, e.clientY);
  };
  canvas.onmousemove = function (e) {
    if (drawing) {
      ctx.lineTo(e.clientX, e.clientY);
      ctx.stroke();
    }
  };
  canvas.onmouseup = canvas.onmouseout = function () {
    drawing = false;
  };
  document.body.appendChild(canvas);
}());
