
char[][] board = new char[GRIDSIZE][GRIDSIZE];
char winner = EMPTY;

void onTheBoard() {
  for(int row = 0; row < GRIDSIZE; row++){
    for (int column = 0; column < GRIDSIZE; column++){
      board[row][column] = EMPTY;
    }
  }
  winner = EMPTY;
}

void keyPressed() {
  if (winner != EMPTY) {
    println("Game over.");
    return;
  }
  if (key >= '0' && key <= '8'){
    int spot = key - '0';
    int row = spot/GRIDSIZE;
    int column = spot % GRIDSIZE;
    
    if(board[row][column] == EMPTY){
      board[row][column] = PLAYER;
      
      if (gettingWinner() == PLAYER){
        winner = PLAYER;
        println("You win!");
        return;
      }
      
      if (boardFull() == 1) {
        println("No one wins.");
        winner = 'T';
        return;
      }
      
      computerMoves();
      
      if(gettingWinner() == COMPUTER){
        winner = COMPUTER;
        println("The Computer wins!");
        return;
      }
      if(boardFull() == 1){
        println("Nobody wins.");
        winner = 'T';
      } else {
        println("Game is still active.");
      }
    } else { 
      println("That spot is taken, try another.");
    }
  } else {
    println("Invalid input. Please press a number from 0 to 8.");
  }
}
      
void computerMoves() {
  for (int row = 0; row < GRIDSIZE; row++){
    for (int column = 0; column < GRIDSIZE; column++){
      if (board[row][column] == EMPTY){
        board[row][column] = COMPUTER;
      
        return;
      }
    }
  }
}

char gettingWinner(){
  for (int index = 0; index < GRIDSIZE; index++){
    if(board[index][0] != EMPTY && board[index][0] == board[index][1] && board[index][1] == board[index][2]) return board[index][0];
    if (board[0][index] != EMPTY && board[0][index] == board[1][index] && board[1][index] == board[2][index]) return board[0][index];
  }
  if (board[1][1] != EMPTY) {
    if (board[0][0] == board[1][1] && board[1][1] == board[2][2]) return board[1][1];
    if (board[0][2] == board[1][1] && board[1][1] == board[2][0]) return board[1][1];
  }
  return EMPTY;
}

int boardFull(){
  for (int row = 0; row < GRIDSIZE; row++){
    for(int column = 0; column < GRIDSIZE; column++){
      if(board[row][column] == EMPTY){
        return 0;
      }
    }
  }
  return 1;
}
