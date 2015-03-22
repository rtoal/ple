import 'dart:html';

void main() {
  var canvas = new Element.canvas();
  var ctx = canvas.context2D;
  var drawing = false;
  canvas.style.border = '2px solid green';
  canvas.onMouseDown.listen((e) {
    drawing = true;
    ctx.moveTo(e.client.x, e.client.y);
  });
  canvas.onMouseMove.listen((e) {
    if (drawing) {
      ctx.lineTo(e.client.x, e.client.y);
      ctx.stroke();
    }
  });
  var stop = (e) => drawing = false;
  canvas
      ..onMouseOut.listen(stop)
      ..onMouseUp.listen(stop);

  document.body.children.add(canvas);
}
