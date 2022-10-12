int[] posX = new int[100];
int[] posY = new int[100];

void setup(){
  fullScreen();
  
  for(int i = 0; i < posY.length; i++){
    posY[i] = int(random(600,800));
  }
}

void draw(){
  background(0,0,255);
  
  noStroke();
  fill(0,155,0);
  rect(0,500,width,height);
  fill(50);
  rect(0,600,width,250);
  
  rightCar(5,1);
  rightCar(4,2);
  rightCar(2,3);
  leftCar(5,4);
  leftCar(4,5);
  leftCar(2,6);
  
}

void rightCar(int speed, int i){
  fill(255);
  
  rect(posX[i], posY[i], 100, 50);
  posX[i] += speed;
  
  if (posX[i] > width){
    posX[i] = -100;
  }
}

void leftCar(int speed, int i){
  fill(255);
  
  rect(posX[i], posY[i], 100, 50);
  posX[i] -= speed;
  
  if(posX[i] < -100){
    posX[i] = width;
  }
}
