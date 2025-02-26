void main() {
  String pad(int n) => n.toString().padLeft(2, '0');

  for (int i = 0; i < 11; i++) {
    int t = (43200 * i + 21600) ~/ 11;
    int h = t ~/ 3600;
    int m = t ~/ 60 % 60;
    int s = t % 60;
    print('${pad(h == 0 ? 12 : h)}:${pad(m)}:${pad(s)}');
  }
}