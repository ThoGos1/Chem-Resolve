//
//  PrecipitationView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/12/21.
//

import SwiftUI

struct PrecipitationView: View {
    var body: some View {
        
        ScrollView {
            VStack {
                
                Text("Precipitation Reactions").font(.title).fontWeight(.bold).padding(.top, -10.0)
                
                GroupBox(label : Text("Precipitation:")
                            .fontWeight(.bold)) {
                    Text("When a solvent and solute touch and react so fast that the solute turns into powder of crystals.\nIons in an aqueous solution produce a solid.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Soluble/Insoluble:")
                            .fontWeight(.bold)) {
                    Text("Soluble substances dissolve in solutions as a physical change, and insoluble substances do not.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Electrolyte:")
                            .fontWeight(.bold)) {
                    Text("A substance that breaks apart into ions in solutions, like NaCl, making them more stable, as water surrounds the ions.\nA strong electrolyte COMPLETETLY breaks apart.\nA weak electrolyte mostly stays together.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Temperature in Solutions:")
                            .fontWeight(.bold)) {
                    Text("If the temperature increases, more solute can be dissolved, as the water and ions can move more freely, so the water can reach more ions.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Complete/Net Ionic Equations:")
                            .fontWeight(.bold)) {
                    Text("A complete equation shows how every ion ionizes, whereas a net ionic equation only shows the solid.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Spectator Ion:")
                            .fontWeight(.bold)) {
                    Text("When an ion doesn't react in the equation, so it is just the same on the left side as the right side.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                Spacer()
            }
        }
        .padding(.horizontal)
    }
}

struct PrecipitationView_Previews: PreviewProvider {
    static var previews: some View {
        PrecipitationView()
    }
}
