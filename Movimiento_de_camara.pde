void draw() {
  xFondo = xFondo + VxFondo;
  
  int imgFondoH = imgFondo.height;
  int imgFondoW = imgFondo.width;
  color[] px = imgFondo.pixels;
  loadPixels();
  imgFondo.loadPixels();
  for (int i = 0, y = 0; y < height; ++y) {
    int yimgFondo = Math.floorMod(y , imgFondoH);
    for (int x = 0; x < width; ++x, ++i) {
      int ximgFondo = Math.floorMod(x + xFondo, imgFondoW);
      int iimgFondo = ximgFondo + yimgFondo * imgFondoW;
      pixels[i] = px[iimgFondo];
    }
  }
  updatePixels();
  
  if (!inicioJuego) {
    pantallaInicio();
  } else if (!finDelJuego) {
    if (!pausa) {
      moverPajaro();
      moverTubos();
      verificarColision();
      actualizarPuntuacion();
    } else {
      pantallaPausa();
    }
  } else {
    pantallaFin();
  }
}
