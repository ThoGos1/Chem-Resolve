//
//  QuantaNumView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/13/21.
//

import SwiftUI

struct QuantaNumView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                
                Text("Quantum Numbers:").font(.title).fontWeight(.bold).padding(.top, -10.0)

                
                GroupBox(label : Text("Quantum Numbers:")
                            .fontWeight(.bold)) {
                    Text("There are 3 quantum numbers that determines the electron configuration of atoms.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Principal Quantum Number (n):")
                            .fontWeight(.bold)) {
                    Text("The HIGHER the n-value the further away it is from the nucleus, until it's free at 'infinity'.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Orbital Angular Momentum Quantum Number (l):")
                            .fontWeight(.bold)) {
                    Text("The l-value is related to the shape of the orbital.\nl = 0, 1, 2, 3 … n-1")
                    Image("orbital")
                        .scaleEffect(0.47)                        .frame(width: 320.0, height: 120.0)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 3))
                }
                
                GroupBox(label : Text("Magnetic Quantum Number (ml):")
                            .fontWeight(.bold)) {
                    Text("The description of the shape, like its orientation and position.\nRange = -l to +l")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Electron Spin (ms):")
                            .fontWeight(.bold)) {
                    Text("Two electrons can have the same n, l, ml, but different spins.\nEither 0.5 or -0.5")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                Spacer()
            }
            
        }
        .padding(.horizontal)
        
    }
}

struct QuantaNumView_Previews: PreviewProvider {
    static var previews: some View {
        QuantaNumView()
    }
}
