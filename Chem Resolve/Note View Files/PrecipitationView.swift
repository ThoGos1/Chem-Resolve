//
//  PrecipitationView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/12/21.
//

import SwiftUI

struct PrecipitationView: View {
    var body: some View {
        ZStack {
            Text("Precipitation Reaction").font(.largeTitle).fontWeight(.bold).padding(.bottom, 725)
            VStack {

                Group {
                    Text("Precipitation:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("When a solvent and solute touch and react so fast that the solute turns into powder of crystals.\nIons in an aqueous solution produce a solid.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Soluble/Insoluble:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Soluble substances dissolve in solutions as a physical change, and insoluble substances do not.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Electrolyte:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("A substance that breaks apart into ions in solutions, like NaCl, making them more stable.\nA strong electrolyte COMPLETETLY breaks apart.\nA weak electrolyte mostly stays together.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Temperature in Solutions:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("If the temperature increases, more solute can be dissolved, as the water and ions can move more freely, so the water can reach more ions.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Complete/Net Ionic Equations:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("A complete equation shows how every ion ionizes, whereas a net ionic equation only shows the solid.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Spectator Ion:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("When an ion doesn't react in the equation, so it is just the same on the left side as the right side.")
                }
                
                Spacer()
            }
            .padding(.top, 55.0).padding()
        }
        
    }
}

struct PrecipitationView_Previews: PreviewProvider {
    static var previews: some View {
        PrecipitationView()
    }
}
