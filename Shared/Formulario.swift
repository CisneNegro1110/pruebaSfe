//
//  Formulario.swift
//  pruebaSfe
//
//  Created by Jesús Francisco Leyva Juárez on 06/05/22.
//

import SwiftUI

struct Formulario: View {
    var nombreTgl: Bool
    var correoTgl: Bool
    var CPTgl: Bool
    var direccionTgl: Bool
    @State private var nombre = ""
    @State private var correo = ""
    @State private var CP = ""
    @State private var direccion = ""
    var body: some View {
        NavigationView {
            HStack {
                VStack {
                    if nombreTgl {
                        TextField("Nombre", text: $nombre)
                    }
                    if correoTgl {
                        TextField("Correo", text: $correo)
                    }
                    if CPTgl {
                        TextField("CodigoPostal", text: $CP)
                    }
                    if direccionTgl {
                        TextField("Dirección", text: $direccion)
                    }
                }.padding()
            }
        }.navigationTitle("Formulario")
    }
}

struct Formulario_Previews: PreviewProvider {
    static var previews: some View {
        Formulario(nombreTgl: false, correoTgl: false, CPTgl: false, direccionTgl: false)
    }
}
