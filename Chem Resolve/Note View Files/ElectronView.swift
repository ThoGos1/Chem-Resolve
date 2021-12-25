//
//  ElectronView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/12/21.
//

import SwiftUI

struct ElectronView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                
                Text("The Electron").font(.title).fontWeight(.bold).padding(.top, -10.0)
                
                GroupBox(label : Text("Electron:")
                            .fontWeight(.bold)) {
                    Text("The negative subatomic particle orbiting the nucleus giving the atom volume, and is responsible for how the atom interacts chemically.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Fundamental Charge:")
                            .fontWeight(.bold)) {
                    Text("Amount of energy in one Electron, either in Coulomb or kilograms:\ne = 1.602∗10^(−19) C\nModern value (charge/mass):\n9.109∗10^(−31) kg")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .offset(x: -16)
                }
                
                Text("The MORE energy the electron has, the further away from the nucleus it is.")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 10.0)
                
                GroupBox(label : Text("Valence Electrons:")
                            .fontWeight(.bold)) {
                    Text("The outer most electrons.\nThese are the electrons that decide how the atom bonds with other atoms.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .offset(x: -2)
                }
                
                GroupBox(label : Text("Core Electrons:")
                        .fontWeight(.bold)) {
                    Text("The inner most electrons.\nCan also be seen as the noble gas that has the same electron configuration.")
                        .padding(.top, -5.0)
                        .padding(.bottom, 20.0)
                }
                
                Spacer()
            }
        }
        .padding(.horizontal)
        
    }
}

struct ElectronView_Previews: PreviewProvider {
    static var previews: some View {
        ElectronView()
    }
}
