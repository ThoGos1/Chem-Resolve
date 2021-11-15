//
//  QTheoryView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/12/21.
//

import SwiftUI

struct QTheoryView: View {
    var body: some View {
        ZStack {
            Text("Quantum Theory").font(.largeTitle).fontWeight(.bold).padding(.bottom, 725)
            VStack {

                Group {
                    Text("Quanta:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Planck's idea that energy exchange and radiation happens in packets of energy.\nPlanck derived it from the photoelectric effect.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Planck and Energy:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Planck's Constant = h = 6.629∗10^(-34) J∗s\nEnergy = h∗frequency")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("The Photoelectric Effect:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Electrons are ejected from metals, if they are hit by UV radiation.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Photon:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("A packet of energy emitted from atoms, that can be visible light.\nLight is actually just a stream of photons.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("The Work Equation:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("It states that a specific amount of energy is required for ejection. It also states that the difference between the energy supplied and the energy required is the kinetic energy of the electron ejected.\nThis means that at higher frequencies, the amount of electrons doesn't change, but the kinetic energy does.")
                        .padding(.bottom, 20.0)
                }
                
                Spacer()
            }
            .padding(.top, 55.0).padding()
        }
        
    }
}

struct QTheoryView_Previews: PreviewProvider {
    static var previews: some View {
        QTheoryView()
    }
}
