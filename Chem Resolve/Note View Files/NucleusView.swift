//
//  NucleusView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/12/21.
//

import SwiftUI

struct NucleusView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            
            VStack {
                
                Text("The Atom and Nucleus").font(.title).fontWeight(.bold).padding(.top, -10.0)
                
                Text("There are 88 naturally occuring elements, but 118 are present in the Periodic Table.")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 15.0)
                    .padding(/*@START_MENU_TOKEN@*/.top, -10.0/*@END_MENU_TOKEN@*/)
                
                GroupBox(label : Text("Element:")
                            .fontWeight(.bold)) {
                    Text("A collection of only the same atom, like H2, O2, N2, F2, Cl2, Br2, and I2.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .offset(x: -12)
                }
                
                GroupBox(label : Text("The Nucleus:")
                            .fontWeight(.bold)) {
                    Text("The center of the atom made up of Protons (+) and Neutrons (0). This is what decides the mass of the atom.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .offset(x: -7)
                }
                
                GroupBox(label : Text("Subatomic particles:")
                            .fontWeight(.bold)) {
                    Text("Particles that make up the atom, like the protons, neutrons, electrons, and quarks.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .offset(x: -5)
                }
                
                GroupBox(label : Text("Atomic Number:")
                            .fontWeight(.bold)) {
                    Text("Amount of protons in the atom, and usually the amount of electrons too, because '+' + '-' = 0.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .offset(x: -10)
                }
                
                GroupBox(label : Text("Isotope:")
                            .fontWeight(.bold)) {
                    Text("An Atom that has the same amount of protons, but different number of neutrons.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .offset(x: -2)
                }
                
                GroupBox(label : Text("Atomic Mass:")
                            .fontWeight(.bold)) {
                    Text("The average of the mass of protons and neutrons from the atom, considering the percent abundance of the different isotopes.\nAvg Mass = (% ∗ mass1) + (% ∗ mass2)")
                        .padding(.top, -5.0)
                        .padding(.bottom, 20.0)
                        .offset(x: -2)
                }
                Spacer()
            }
            
        }
        .padding(.horizontal)
        
    }
}

struct NucleusView_Previews: PreviewProvider {
    static var previews: some View {
        NucleusView()
    }
}
