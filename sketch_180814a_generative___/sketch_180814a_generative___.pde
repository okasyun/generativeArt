void updateMe();
  x += xmove;
  y += ymove;
  if (x > (width+ radius)) { x = 0 - radius; }
  if (x < (0- radius)) { x = width+ radius; }
  if (y > (height+ radius)) { y = 0 - radius; }
  
