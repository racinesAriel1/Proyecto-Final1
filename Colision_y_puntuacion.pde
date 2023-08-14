void verificarColision() {
  for (int i = 0; i < 2; i++) {
    if (posYpajaro < posYtuboArriba[i] || posYpajaro > posYtuboAbajo[i]) {
      if (posXtubo[i] < 150 && posXtubo[i] + anchoTubo > 150) {
        finDelJuego();
      }
    }
  }
}

void actualizarPuntuacion() {
  for (int i = 0; i < 2; i++) {
    if (posXtubo[i] + anchoTubo == 100) {
      puntuacion++;
    }
  }
 if (puntuacion > puntajeMaximo) {
    puntajeMaximo = puntuacion;  // Actualiza el puntaje máximo si el puntaje actual es mayor
  }

  textSize(24);
  fill(0);
  text("SCORE: " + puntuacion, 50, 30);
  text("MAX SCORE: " + puntajeMaximo, 75, 60);  // Agrega el puntaje máximo
}
