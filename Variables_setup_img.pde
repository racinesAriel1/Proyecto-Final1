boolean finDelJuego;
boolean inicioJuego;
boolean pausa;
boolean pantallaPausa;
boolean pantallaFin;
int posYpajaro;
float velocidadPajaro;
float gravedad;
int espacioTubos = 200;
float velocidadTubos;
int anchoTubo;
int altoTubo;
int[] posXtubo;
int[] posYtuboArriba;
int[] posYtuboAbajo;
int puntuacion;
int puntajeMaximo = 0;  
PFont fuenteInstrucciones;
PImage imgFondo;
PImage imgPajaro;
int xFondo = 0;
int VxFondo = 2;

void setup() {
  size(900, 600);
  cargarImagenes();
  reiniciarJuego();
}

void cargarImagenes() {
  
  imgFondo= loadImage("bg.png");
  imgFondo.resize(width, height);
  imgPajaro = loadImage("pajaro.png");
  imgPajaro.resize(60, 60);
  
  
}
