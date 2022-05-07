//
//  NombreYBoton.swift
//  pruebaSfe
//
//  Created by Jesús Francisco Leyva Juárez on 06/05/22.
//

import SwiftUI

struct NombreYBoton: View {
    let nombre: String
    @Binding var datoTgl: Bool
    var body: some View {
        VStack {
            HStack {
                Text(nombre)
                Spacer()
                Button(action: {
                    datoTgl.toggle()
                }, label: {
                    datoTgl ? Image(systemName: "checkmark.circle.fill") : Image(systemName: "circle")
                })
            }.padding()
        }
    }
}

struct NombreYBoton_Previews: PreviewProvider {
    static var previews: some View {
        NombreYBoton(nombre: "", datoTgl: .constant(false))
    }
}
