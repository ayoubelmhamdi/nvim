var x = 100;
var y = 100;
var speed = 1;

function setup() {
  createCanvas(300, 300);
}
function draw() {
  background(255, 0, 130);

  fill(0, 255, 0);
  circle(100, 100, 30);
  mouve();
}
function mouve() {
  if (x > 0 && x < toul) {
    speed = speed * 1;
  } else {
    speed = speed * -1;
  }
  x = x + speed;
}
