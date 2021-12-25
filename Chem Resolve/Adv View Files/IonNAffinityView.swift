//
//  IonNAffinityView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/13/21.
//

import SwiftUI

struct IonNAffinityView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                
                Text("Ionization and Affinity:").font(.title).fontWeight(.bold).padding(.top, -10.0)

                
                GroupBox(label : Text("Ionization Energy:")
                            .fontWeight(.bold)) {
                    Text("The minimum amount of energy needed to remove an electron from an atom in gas phase.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .offset(x: -1)
                }
                
                GroupBox(label : Text("Largest Magnitude of Energy Found:")
                            .fontWeight(.bold)) {
                    Text("When you are trying to remove core electrons instead of valence electrons.\nSo the BIGGEST change in energy is equal to the amount of valence electrons of the atom.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .offset(x: -1)
                }
                
                GroupBox(label : Text("First Ionization Energy:")
                            .fontWeight(.bold)) {
                    Text("The minimum energy needed to REMOVE the first electron from a neutral atom.\nIt's easier to remove an electron from an orbital with two electrons, which is why the ionization energy is higher in Nitrogen than Oxygen.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .offset(x: -4)
                }
                
                GroupBox(label : Text("Second Ionization Energy:")
                            .fontWeight(.bold)) {
                    Text("The minimum energy needed to REMOVE the second electron from an already charged atom.\nIt is always harder, because it might be a core electron or the ion usually only loses one electron.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Electron Affinity:")
                            .fontWeight(.bold)) {
                    Text("How much energy is released after an electron is added to the atom, and if it's negative that means that energy is needed to add an electron.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .offset(x: -1)
                }
                
                Spacer()
            }
            
        }
        .padding(.horizontal)
        
    }
}

struct IonNAffinityView_Previews: PreviewProvider {
    static var previews: some View {
        IonNAffinityView()
    }
}
