//
//  MixtureView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/11/21.
//

import SwiftUI

struct MixtureView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                
                Text("Mixtures and Solutions").font(.title).fontWeight(.bold).padding(.top, -10.0)
                
                GroupBox(label : Text("Mixture:")
                            .fontWeight(.bold)) {
                    Text("A mix of two substances like salt and water, or the air in the atmosphere\nA mixture is a PHYSICAL change, and can be undone physically.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Heterogeneous Mixture:")
                        .fontWeight(.bold)) {
                    Text("Two different substances combined, like salt & water. The components are big enough to separate them.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Homogeneous Mixtures AKA Solutions:")
                            .fontWeight(.bold)) {
                    Text("One or more substances dissolved together into one mixture.\nGaseous mixtures DON'T really count here\nThe molecules are so well mixed that you can't see separate components, AKA Uniform.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Solvent:")
                            .fontWeight(.bold)) {
                    Text("The dominant substance that the solutes mix with. So it's what you add something to, like salt to water to make a solution.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Solute:")
                            .fontWeight(.bold)) {
                    Text("The stuff added that then mix with the solvent. So it's what you add to something like water to make a solution.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Crystallization:")
                            .fontWeight(.bold)) {
                    Text("When the solute comes out of the solvent as crystals, like salt in water, after evaporation.")
                        .padding(.top, -5.0)
                        .padding(.bottom, 20.0)
                }
                
                
                Spacer()
            }
            
        }
        .padding(.horizontal)
    }
}

struct MixtureView_Previews: PreviewProvider {
    static var previews: some View {
        MixtureView()
    }
}
