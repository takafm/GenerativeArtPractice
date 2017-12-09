
/// 座標に直接乱数を設定するのではなく、現在地からどれだけ移動するかを乱数で毎回決める//////////
/// 乱数を間接的に利用することで、より自然な複雑さをつくる //////////
void RandomLine2(){
  float stepX = 10;
  float stepY = 10;
  float lastX = 20;
  float lastY = height/2;
  float y = height/2;
  int startX = 20;

  for (int x = startX; x <= width - startX; x += stepX){
    stepY = random(20) - 10;
    y += stepY; // 
    line(x, y, lastX, lastY);
    lastX = x;
    lastY = y;
    
  }
}

/// 乱数を直接、座標値に設定する //////////
void RandomLine1(){
  int stepX = 10;
  float lastX = -999;
  float lastY = -999;
  float y = height/2;
  int startX = 20;
  int startY = 10;

  for (int x = startX; x <= width - startX; x += stepX){
    y = startY + random(height - 2*startY); // 
    if (lastX > -999){
      line(x, y, lastX, lastY);
    }
    lastX = x;
    lastY = y;
  }
}

// 基準線の描画 //////////
void SimpleLine(){  
  int step = 10;
  float lastX = -999;
  float lastY = -999;
  float y = height/2;
  int border = 20;
  
  for (int x = border; x <= width - border; x += step){
    if (lastX > -999){
      line(x, y, lastX, lastY);
    }
    lastX = x;
    lastY = y;
  }
}