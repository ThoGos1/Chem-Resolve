//
//  NucleusView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/12/21.
//

import SwiftUI

struct NucleusView: View {
    var body: some View {
        ZStack {
            Text("The Atom and Nucleus").font(.largeTitle).fontWeight(.bold).padding(.bottom, 725)
            VStack {
                
                Text("There are 88 naturally occuring elements, but 118 are present in the Periodic Table.")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20.0)
                    .padding(/*@START_MENU_TOKEN@*/.top, -10.0/*@END_MENU_TOKEN@*/)
                
                Group {
                    Text("Element:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("A collection of only the same atom, like H2, O2, N2, F2, Cl2, Br2, and I2.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("The Nucleus:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("The center of the atom made up of Protons (+) and Neutrons (0).")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Subatomic particles:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Particles that make up the atom, like the protons, neutrons, electrons, and quarks.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Atomic Number:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Amount of protons in the atom, and usually the amount of electrons too, because '+' + '-' = 0.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Isotope:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("An Atom that has the same amount of protons, but different number of neutrons.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Atomic Mass:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("The average of the mass of protons and neutrons from the atom, considering the percent abundance of the different isotopes.\nAvg Mass = (% ∗ mass1) + (% ∗ mass2)")
                }
                

                
                
                Spacer()
            }
            .padding(.top, 55.0).padding()
        }
        
    }
}

struct NucleusView_Previews: PreviewProvider {
    static var previews: some View {
        NucleusView()
    }
}
