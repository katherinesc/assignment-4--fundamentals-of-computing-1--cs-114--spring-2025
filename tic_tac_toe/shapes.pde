void drawBoard() {
  line(0, 167, 500, 167);
  line(0, 334, 500, 334);
  line(167, 0, 167, 500);
  line(334, 0, 334, 500);
}

void drawOAtSpot (int spot){
  int spotSize = 167;
  int row  = spot / 3;
  int column = spot % 3;
  
  float centerX = column * spotSize + spotSize / 2;
  float centerY = row * spotSize + spotSize / 2;
  ellipse(centerX, centerY, spotSize, spotSize);
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
