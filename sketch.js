let AMP_MAX = 0.2;
let AMP_MIN = 0.02;

let mic;
let amp;
let haySonido = false;

let x, mov;
let figura, fondo;

let obraT;

let obra = {
  img: 0,
  ancho: 500,
  alto: 500,
};

function preload() {
  figura = loadImage('img/obra armada tecno.png');
  fondo = loadImage('img/fondo1.jpg');
}

function setup() {
  createCanvas(1000, 1000);
  obra.img = figura;
  imageMode(CENTER);
  mov = 0;

  mic = new p5.AudioIn();
  mic.start();

  obraT = createGraphics(width, height);
}

function draw() {
  background(255);

  haySonido = amp > AMP_MIN;
  amp = mic.getLevel();

  // Efecto de caleidoscopio
  let t = map(amp, 0, 1, -PI, PI); // Mapea la amplitud al rango del ángulo de rotación

  // Caleidoscopio superior izquierdo
  push();
  translate(width / 4, height / 4);
  rotate(t);
  image(obra.img, 0, 0, obra.ancho, obra.alto);
  pop();

  // Caleidoscopio superior derecho
  push();
  translate((3 * width) / 4, height / 4);
  rotate(-t);
  image(obra.img, 0, 0, obra.ancho, obra.alto);
  pop();

  // Caleidoscopio inferior izquierdo
  push();
  translate(width / 4, (3 * height) / 4);
  rotate(-t);
  image(obra.img, 0, 0, obra.ancho, obra.alto);
  pop();

  // Caleidoscopio inferior derecho
  push();
  translate((3 * width) / 4, (3 * height) / 4);
  rotate(t);
  image(obra.img, 0, 0, obra.ancho, obra.alto);
  pop();

  // Control de movimiento horizontal
  mov = map(mouseX, 0, width, -50, 50);

  // Control de tamaño basado en la amplitud
  let tam = map(amp, 0, 1, 0.5, 2);
  image(obra.img, width / 2, height / 2, obra.ancho * tam, obra.alto * tam);
}








 

