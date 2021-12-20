//
//  QTheoryView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/12/21.
//

import SwiftUI

struct QTheoryView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                
                Text("Quantum Theory").font(.title).fontWeight(.bold).padding(.top, -10.0)

                
                GroupBox(label : Text("Quanta:")
                            .fontWeight(.bold)) {
                    Text("Planck's idea that energy exchange and radiation happens in packets of energy.\nPlanck derived it from the photoelectric effect.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Planck and Energy:")
                            .fontWeight(.bold)) {
                    Text("Planck's Constant = h = 6.629∗10^(-34) J∗s\nEnergy = h∗frequency")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("The Photoelectric Effect:")
                            .fontWeight(.bold)) {
                    Text("Electrons are ejected from metals, if they are hit by UV radiation.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)

                }
                
                GroupBox(label : Text("Photon:")
                            .fontWeight(.bold)) {
                    Text("A packet of energy emitted from atoms, that can be visible light.\nLight is actually just a stream of photons.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("The Work Equation:")
                            .fontWeight(.bold)) {
                    Text("It states that a specific amount of energy is required for ejection. It also states that the difference between the energy supplied and the energy required is the kinetic energy of the electron ejected.\nThis means that at higher frequencies, the amount of electrons doesn't change, but the kinetic energy does.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                Spacer()
            }
            
        }
        .padding(.horizontal)
    }
}

struct QTheoryView_Previews: PreviewProvider {
    static var previews: some View {
        QTheoryView()
    }
}
