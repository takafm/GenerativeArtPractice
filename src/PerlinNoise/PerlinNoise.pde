void setup(){
  size(500, 100);
  background(255);
  strokeWeight(5);
  smooth();
  
  // Border Line
  stroke(0, 30);
  line(20,50,480,50);
  
  // Perlin Noise 
  // noise()引数には連続的に変化する変数を入れる
  // 引数が小さいと変化は滑らかになる
  // この例ではxはstep=10だけ水平に動かしながら、10+noise()*80で返される10~90の値をy座標としている
  stroke(20, 50, 70);
  int step = 10;
  float lastx = -999;
  float lasty = -999;
  float ynoise = random(10);
  float y;
  for (int x=20; x<=480; x+=step) {
    y = 10 + noise(ynoise) * 80;
    if (lastx > -999) {
      line(x, y, lastx, lasty);
  }
  lastx = x; lasty = y; ynoise += 0.1;
  }
}

void draw(){
}