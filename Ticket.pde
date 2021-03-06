class Ticket{
  Moviescreen moviescreen;
  Seat seat;

  
  Ticket(Moviescreen m, Seat s){
    this.moviescreen = m;
    this.seat = s;
  }
  
  void drawTicket(int x1, int y1){
    fill(this.moviescreen.ticketColour);
    stroke(227, 39, 79);
    rect(x1, y1, ticketWdith, ticketHeight);

    int xImg1 = int(x1 + 0.5*ticketWidth);
    //int xImg2 = xImg1 + graphicWidth; **Might use, don't know**
    int yImg1 = int(y1 + 0.25*ticketHeight);
    image(ticketGraphic, xImg1, yImg1);
  }
  
  textAlign(LEFT);
  fill(0);
  
  int xText1 = x1 + graphicWidth;
  int xText2 = x1 + ticketWidth;
  int xMovie = (xText + xText2)/2; 
  int yMovie = int(y1 + 0.15*ticketHeight);
  text("Insert movie theatre name", xMovie, yMovie);
