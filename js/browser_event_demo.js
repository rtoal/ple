window.addEventListener('load', e => {
  const canvas = document.createElement('canvas');
  const ctx = canvas.getContext('2d');
  let drawing = false;
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
  const stopDrawing = e => {drawing = false};
  canvas.addEventListener('mouseup', stopDrawing);
  canvas.addEventListener('mouseout', stopDrawing);
  document.body.appendChild(canvas);
});
