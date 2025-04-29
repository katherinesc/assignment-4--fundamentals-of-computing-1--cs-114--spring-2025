void drawBoard() {
  line(0, 167, 500, 167);
  line(0, 334, 500, 334);
  line(167, 0, 167, 500);
  line(334, 0, 334, 500);
}

void drawOAt0() {
  ellipse(83.5, 83.5, 167, 167);
}

void drawOAt1() {
  ellipse(250.5, 83.5, 167, 167);
}

void drawOAt3() {
  ellipse(83.5, 250.5, 167, 167);
}

void drawOAt4() {
  ellipse(250.5, 250.5, 167, 167);
}

void drawOAt6() {
  ellipse(83.5, 417.5, 167, 167);
}

void drawOAt8() {
  ellipse(417.5, 417.5, 167, 167);
}
