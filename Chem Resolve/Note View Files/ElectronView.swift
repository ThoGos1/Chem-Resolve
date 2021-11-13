//
//  ElectronView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/12/21.
//

import SwiftUI

struct ElectronView: View {
    var body: some View {
        ZStack {
            Text("The Electron").font(.largeTitle).fontWeight(.bold).padding(.bottom, 725)
            VStack {

                Group {
                    Text("Electron:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("The negative subatomic particle orbiting the nucleus giving the atom volume, and is responsible for how the atom interacts chemically.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Fundamental Charge:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Amount of energy/Coulomb in one Electron:\ne = 1.602∗10^(−19) C\nModern value (charge/mass):\n9.109∗10^(−31) kg")
                        .padding(.bottom, 20.0)
                }
                
                Text("The MORE energy the electron has, the farther away from the nucleus it is.")
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20.0)
                
                Group {
                    Text("Valence Electrons:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("The outer most electrons.\nThese are the electrons that decide how the atom bonds with other atoms.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Core Electrons:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("The inner most electrons.\nCan also be seen as the noble gas that has the same electron configuration.")
                }
                
                Spacer()
            }
            .padding(.top, 55.0).padding()
        }
        
    }
}

struct ElectronView_Previews: PreviewProvider {
    static var previews: some View {
        ElectronView()
    }
}
