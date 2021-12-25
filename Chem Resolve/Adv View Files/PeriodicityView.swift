//
//  PeriodicityView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/13/21.
//

import SwiftUI

struct PeriodicityView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                
                Text("Periodicity:").font(.title).fontWeight(.bold).padding(.top, -10.0)

                
                Text("Almost every electron is SHIELDED from the nucleus, because the electrons closest to the nucleus is repelling the others.\nThis Negative Repelling increases the radius/volume of the atoms, as they push out on each other.")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20.0)
                    .padding(/*@START_MENU_TOKEN@*/.top, -10.0/*@END_MENU_TOKEN@*/)
                
                GroupBox(label : Text("Effective Nuclear Charge (Z-eff):")
                            .fontWeight(.bold)) {
                    Text("The attraction force from the nucleus, proportional to the amount of protons in the nucleus.\nS < p < d < f < g < h\nWith the same n-value.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .offset(x: -2)
                }
                
                GroupBox(label : Text("Atomic Radius:")
                            .fontWeight(.bold)) {
                    Text("Defined as half of the distance between two of the elements atoms.\nThis DECREASES from Left -> Right, because protons are pulling electrons in TIGHTER\nThis INCREASES from Top -> Bottom, because more and more SHELLS are added")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .offset(x: -2)
                }
                
                GroupBox(label : Text("Ionic Radius:")
                            .fontWeight(.bold)) {
                    Text("The ionic radius and therefore volume of an ion increases when electrons are added, so anions get BIGGER, whereas catins get SMALLER.\nALSO The change is quite significant.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                
                Spacer()
            }
            
        }
        .padding(.horizontal)
        
    }
}

struct PeriodicityView_Previews: PreviewProvider {
    static var previews: some View {
        PeriodicityView()
    }
}
