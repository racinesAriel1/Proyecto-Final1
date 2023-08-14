void reiniciarJuego() {
 posYpajaro = height / 2;
 velocidadPajaro = 0;
 gravedad = 0.5;
 finDelJuego = false;
 espacioTubos = 200;
 velocidadTubos = 2;
 anchoTubo = 50;
 altoTubo = 300;
 
 posXtubo = new int[2];
 posYtuboArriba = new int[2];
 posYtuboAbajo = new int[2];
 
 for (int i = 0; i < 2; i++) {
 posXtubo[i] = width + i * (width / 2);
 }
 

 generarTubos();
 
 puntuacion = 0;
}
void generarTubos() {
 for (int i = 0; i < 2; i++) {
    posYtuboArriba[i] = (int) random(100, height - altoTubo - espacioTubos);
    int minAlturaAbajo = posYtuboArriba[i] + espacioTubos + 100; // Altura mínima para el tubo de abajo
    int maxAlturaAbajo = height - 100; // Altura máxima para el tubo de abajo
    posYtuboAbajo[i] = (int) random(minAlturaAbajo, maxAlturaAbajo);
  }
}

void moverPajaro() {
 velocidadPajaro += gravedad;
 posYpajaro += velocidadPajaro;
 
 if (posYpajaro > height || posYpajaro < 0) {
 finDelJuego();
 }
 
 image(imgPajaro, 100, posYpajaro);
}
void moverTubos() {
for (int i = 0; i < 2; i++) {
    posXtubo[i] -= velocidadTubos;

    if (posXtubo[i] + anchoTubo < 0) {
      posXtubo[i] = width;
      posYtuboArriba[i] = (int) random(80, height - altoTubo - espacioTubos);
      int minAlturaAbajo = posYtuboArriba[i] + espacioTubos + 80; // Altura mínima para el tubo de abajo
      int maxAlturaAbajo = height - 100; // Altura máxima para el tubo de abajo
      posYtuboAbajo[i] = (int) random(minAlturaAbajo, maxAlturaAbajo);
    }

    fill(0, 200, 0);
    rect(posXtubo[i], 0, anchoTubo, posYtuboArriba[i]);
    rect(posXtubo[i], posYtuboAbajo[i], anchoTubo, height - posYtuboAbajo[i]);
  }
}
