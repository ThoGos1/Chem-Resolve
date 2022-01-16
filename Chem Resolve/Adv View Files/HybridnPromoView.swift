//
//  HybridnPromoView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 1/15/22.
//

import SwiftUI

struct HybridnPromoView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                
                Text("Hybridization:").font(.title).fontWeight(.bold).padding(.top, -10.0)

                
                GroupBox(label : Text("Electron Promotion:")
                            .fontWeight(.bold)) {
                    Text("When an electron from a lower shell like an 's' orbital goes up into a 'p' orbital.\nIt is VERY easy for carbon, because the required promotion energy is low. It is ONLY elements with empty 'p' orbitals that can do this, so NO oxygen or F, but Boron can. However, they still hybridize, but promotion just can't happen.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .multilineTextAlignment(.center)
                }
            
                GroupBox(label : Text("Hybridization:")
                            .fontWeight(.bold)) {
                    Text("When hybrid orbitals are created and it means that all orbitals have equal energy. So instead of having 's' and 'p' orbitals an atom can have 'sp3' orbitals.")
                        .padding(.top, -5.0)
                        .multilineTextAlignment(.center)
                    Image("hybridtab")
                        .padding(.bottom, 2.0)
                        .scaleEffect(0.316)                        .frame(width: 295.0, height: 98.0)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 4)
                            .stroke(Color.black, lineWidth: 3))

                }
                
                GroupBox(label : Text("Hybridization and Valence:")
                            .fontWeight(.bold)) {
                    Text("Follow the VSEPR model, so for ethane it is just two tetrahedral's/methane's bonded over sigma AND For ammonia (NH3) it is also tetrahedral, which means it can be looked at as 4 sigma bonds in the form of sp3.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .multilineTextAlignment(.center)

                }
                Spacer()
            }
            
        }
        .padding(.horizontal)
        
    }
}

struct HybridnPromoView_Previews: PreviewProvider {
    static var previews: some View {
        HybridnPromoView()
    }
}
