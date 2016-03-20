window.addEventListener('load', e => {
  var canvas = document.createElement('canvas');
  var ctx = canvas.getContext('2d');
  var drawing = false;
  canvas.style.border = '2px solid purple';
  canvas.addEventListener('mousedown', e => {
    drawing = true;
    ctx.moveTo(e.clientX, e.clientY);
  });
  canvas.addEventListener('mousemove', e => {
    if (drawing) {
      ctx.lineTo(e.clientX, e.clientY);
      ctx.stroke();
    }
  });
  let stopDrawing = e => {drawing = false};
  canvas.addEventListener('mouseup', stopDrawing);
  canvas.addEventListener('mouseout', stopDrawing);
  document.body.appendChild(canvas);
});
