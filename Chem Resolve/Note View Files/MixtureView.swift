//
//  MixtureView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/11/21.
//

import SwiftUI

struct MixtureView: View {
    var body: some View {
        ZStack {
            Text("Mixtures and Solutions").font(.largeTitle).fontWeight(.bold).padding(.bottom, 725)
            VStack {
                
                Group {
                    Text("Mixture:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("A mix of two substances like salt and water, or the air in the atmosphere\nA mixture is a PHYSICAL change, and can be undone physically.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Heterogeneous Mixture:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Two different substances combined, like salt & water. The components are big enough to separate them.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Homogeneous Mixtures AKA Solutions:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("One or more substances dissolved together into one mixture.\nGaseous mixtures DON'T really count here\nThe molecules are so well mixed that you can't see separate components, AKA Uniform")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Solvent:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Dominant substance that the solutes mix with")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Solute:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("The stuff added that then mix with the solvent")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Crystallization:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("When the solute comes out of the solvent as crystals, like salt in water, after evaporation.")
                }
                
                
                Spacer()
            }
            .padding(.top, 55.0).padding()
        }
        
    }
}

struct MixtureView_Previews: PreviewProvider {
    static var previews: some View {
        MixtureView()
    }
}
