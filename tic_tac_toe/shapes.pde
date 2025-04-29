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

void drawOAt2() {
  ellipse(417.5, 83.5, 167, 167);
}

void drawOAt3() {
  ellipse(83.5, 250.5, 167, 167);
}

void drawOAt4() {
  ellipse(250.5, 250.5, 167, 167);
}

void drawOAt5() {
  ellipse(417.5, 250.5, 167, 167);
}

void drawOAt6() {
  ellipse(83.5, 417.5, 167, 167);
}

void drawOAt7() {
  ellipse(250.5, 417.5, 167, 167);
}

void drawOAt8() {
  ellipse(417.5, 417.5, 167, 167);
}

void drawXAtSpot(int spot) {
  int spotSize = 167;
  int row = spot/3;
  int column = spot % 3;
  
  int x1 = column * spotSize;
  int y1 = row * spotSize;
  int x2 = x1 + spotSize;
  int y2 = y1 + spotSize;
  
  line(x1, y1, x2, y2);
  line(x1, y2, x2, y1);
}
