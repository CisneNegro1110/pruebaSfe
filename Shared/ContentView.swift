//
//  ContentView.swift
//  Shared
//
//  Created by Jesús Francisco Leyva Juárez on 06/05/22.
//

import SwiftUI

struct ContentView: View {
    @State private var nombreTgl = false
    @State private var correoTgl = false
    @State private var CP = false
    @State private var direccion = false
    var body: some View {
        NavigationView {
            HStack {
                VStack {
                    NombreYBoton(nombre: "Nombre", datoTgl: $nombreTgl)
                    NombreYBoton(nombre: "Correo", datoTgl: $correoTgl)
                    NombreYBoton(nombre: "CP", datoTgl: $CP)
                    NombreYBoton(nombre: "Direccion", datoTgl: $direccion)
                    NavigationLink("Next",
                                   destination: Formulario(nombreTgl: nombreTgl,
                                                          correoTgl: correoTgl,
                                                           CPTgl: CP,
                                                           direccionTgl: direccion))
                }
            }
            .navigationTitle("Datos")
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
