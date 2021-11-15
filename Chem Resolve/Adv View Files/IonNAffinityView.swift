//
//  IonNAffinityView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/13/21.
//

import SwiftUI

struct IonNAffinityView: View {
    var body: some View {
        ZStack {
            Text("Ionization and Affinity").font(.largeTitle).fontWeight(.bold).padding(.bottom, 725)
            VStack {
                
                Group {
                    Text("Ionization Energy:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("The minimum amount of energy needed to remove an electron from an atom in gas phase.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Largest Magnitude of Energy Found:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("When you are trying to remove core electrons instead of valence electrons.\nSo the BIGGEST change in energy is equal to the amount of valence electrons of the atom.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("First Ionization Energy:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("The minimum energy needed to REMOVE the first electron from a neutral atom.\nIt's easier to remove an electron from an orbital with two electrons, which is why the ionization energy is higher in Nitrogen than Oxygen.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Second Ionization Energy:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("The minimum energy needed to REMOVE the second electron from an already charged atom.\nIt is always harder, because it might be a core electron or the ion usually only loses one electron.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Electron Affinity:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("How much energy is released after an electron is added to the atom, and if it's negative that means that energy is needed to add an electron.")
                        .padding(.bottom, 20.0)
                }
                
                
                
                Spacer()
            }
            .padding(.top, 55.0).padding()
        }
        
    }
}

struct IonNAffinityView_Previews: PreviewProvider {
    static var previews: some View {
        IonNAffinityView()
    }
}
