void keyPressed() {
  if (!inicioJuego && (key == 'i' || key == 'I')) {
    inicioJuego = true;
  } else if (key == ' ' && !finDelJuego && !pantallaPausa) {
    velocidadPajaro = -10;
  } else if ((key == 'P' || key == 'p') && !finDelJuego) {
    if (!pantallaFin) {
      pausa = !pausa;
      pantallaPausa = true;
    }
  } else if ((key == 'c' || key == 'C') && pantallaPausa) {
    pausa = false;
    pantallaPausa = false;
  } else if ((key == 'r' || key == 'R') && pantallaFin) {
    pantallaFin = false;
    inicioJuego = false;
    reiniciarJuego();
  }
}

void pantallaInicio() {
  textAlign(CENTER);
  fill(0, 255, 0);
  textSize(100);
  text("FLAPPY BIRD", width / 2, height / 2);
  fill(0);
  textSize(50);
  text("APLASTA 'I' PARA INICIAR", width / 2, height / 1.1);
}

void pantallaPausa() {
  pausa = true;
  textAlign(CENTER);
  fill(255, 0, 0);
  textSize(48);
  text("PAUSE", width / 2, height / 2 - 50);
  textSize(30);
  text("APLASTA 'C' PARA CONTINUAR", width / 2, height / 2 + 50);
}

void pantallaFin() {
  textAlign(CENTER);
  fill(255, 0, 0);
  textSize(40);
  text("FIN DEL JUEGO", width / 2, height / 2 - 40);
  textSize(24);
  text("SCORE: " + puntuacion, width / 2, height / 2);
  textSize(20);
  text("PARA IR A INICIO APLASTA 'R'", width / 2, height / 2 + 60);
  pantallaFin = true;
}

void finDelJuego() {
  finDelJuego = true;
  pantallaFin();
}
