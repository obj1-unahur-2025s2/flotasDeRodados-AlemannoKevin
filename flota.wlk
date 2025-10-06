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
    method color() = azul
}

object traffic {
    var tipoInterior = comodo
    var tipoMotor = pulenta

    method tipoInterior() = tipoInterior
    method tipoMotor() = tipoMotor
    method cambiarInterior (nuevoInterior) {
        tipoInterior = nuevoInterior
    }
    method cambiarMotor (nuevoMotor) {
        tipoMotor = nuevoMotor
    }
    method capacidad() = tipoInterior.capacidad()
    method peso() = 4000 + tipoInterior.peso() + tipoMotor.peso()
    method velocidadMaxima() = tipoMotor.velocidadMaxima()
    method color() = blanco
}

object comodo {
    method capacidad() = 5
    method peso() = 700
}

object popular {
    method capacidad() = 12
    method peso() = 1000
}

object pulenta {
    method peso() = 800
    method velocidadMaxima() = 130
}

object bataton {
    method peso() = 500
    method velocidadMaxima() = 80
}

class AutoEspecial {
    const property capacidad
    const property velocidad
    const peso
    const color

    method peso() = peso
    method color() = color
}

object flota {
    const rodados = []
    var cantidadEmpleados = 50

    method cantidadEmpleados(empleados){
        cantidadEmpleados = empleados
    }
    method agregarAFlota(rodado) {
        rodados.add(rodado)
    }
    method quitarDeFlota(rodado) {
        rodados.remove(rodado)
    }
    method pesoTotalFlota() = rodados.sum({p => p.peso()})

    method capacidadTotalFlota() = rodados.sum({p => p.capacidad()})
    
    method estaBienEquipada() = rodados.size() >= 3 and rodados.all({p => p.velocidadMaxima() >= 100})

    method capacidadTotalEnColor(color) = rodados.filter({p => p.color() == color}).sum({a => a.capacidad()})

    method colorDelRodadoMasRapido() = rodados.max({p => p.velocidad()}).color()

    method capacidadFaltante() = cantidadEmpleados - self.capacidadTotalFlota()
}

object azul {}
object blanco {}