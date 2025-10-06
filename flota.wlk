class Corsa {
    const color
    const capacidad = 4
    const velocidadMaxima = 150
    const peso = 1300
    
    method capacidad() = capacidad
    method velocidadMaxima() = velocidadMaxima
    method peso() = peso
    method color() = color
}

class RenoKwid {
    const tanqueAdicional

    method tieneTanqueAdicional() = tanqueAdicional
    method capacidad() = if(self.tieneTanqueAdicional()) 3 else 4
    method velocidadMaxima() = if(self.tieneTanqueAdicional()) 120 else 110
    method peso() = if(self.tieneTanqueAdicional()) 1350 else 1200
    method color() = 'Azul'
}