//
//  PeriodicityView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/13/21.
//

import SwiftUI

struct PeriodicityView: View {
    var body: some View {
        ZStack {
            Text("Periodicity").font(.largeTitle).fontWeight(.bold).padding(.bottom, 725)
            VStack {
                
                Text("Almost each electron is SHIELDED from the nucleus, because the electrons closest to the nucleus is repelling the others.\nThis Negative Repelling increases the radius/volume of the atoms, as they push out on each other.")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20.0)
                    .padding(/*@START_MENU_TOKEN@*/.top, -10.0/*@END_MENU_TOKEN@*/)
                
                Group {
                    Text("Effective Nuclear Charge (Z-eff):")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("The attraction force from the nucleus, proportional to the amount of protons in the nucleus.\nS < p < d < f < g < h\nWith the same n-value.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Atomic Radius:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Defined as half of the distance between two of the elements atoms.\nThis DECREASES from Left -> Right, because protons are pulling electrons in TIGHTER\nThis INCREASES from Top -> Bottom, because more and more SHELLS are added")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Ionic Radius:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("The ionic radius and therefore volume of an ion increases when electrons are added, so anions get BIGGER, whereas catins get SMALLER.\nALSO The change is quite significant.")
                }
                
                
                Spacer()
            }
            .padding(.top, 55.0).padding()
        }
        
    }
}

struct PeriodicityView_Previews: PreviewProvider {
    static var previews: some View {
        PeriodicityView()
    }
}
