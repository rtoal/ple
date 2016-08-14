import 'dart:html';
void main() {
  for (var i = 0; i < 10; i++) {
    var button = new ButtonElement();
    button.text = i;
    button.onClick.listen(((i) => (e) => window.alert(i))(i));
    document.body.children.add(button);
  }
}
