void setup() {
  size(500, 500);
  onTheBoard();
  computerMoves();
}

void draw() {
  background(255);
  drawBoard();
  drawShapes();
}
