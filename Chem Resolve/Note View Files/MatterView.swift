//
//  MatterView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 10/31/21.
//

import SwiftUI

struct MatterView: View {
    var body: some View {
        
        ScrollView {
            
            VStack {
                
                Text("Mass and Matter").font(.title).fontWeight(.bold).padding(.top, -10.0)
                
                GroupBox(label : Text("Physical Properties:")
                            .fontWeight(.bold)) {
                    Text("What a thing looks like, smells like, its color, mass, size, melting point, etc.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Chemical Properties:")
                            .fontWeight(.bold)) {
                    Text("Characteristics of how it can change its chemical structure or composition.\nEx. Flammability")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                    
                }
                            
                
                GroupBox(label : Text("Substance:")
                            .fontWeight(.bold)) {
                    Text("Single pure form of matter like H2 or NaCl, and nothing else in it")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)

                }
                
                GroupBox(label : Text("Extensive Properties:")
                            .fontWeight(.bold)) {
                    Text("Properties that change when the size of an object changes, like volume, energy, and entropy")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Intensive Properties:")
                            .fontWeight(.bold)) {
                    Text("Properties that DO NOT change when the size changes, like density and temperature")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Intensive Properties:")
                            .fontWeight(.bold)) {
                    Text("Change between the 4 main phases:\nS: Solid (Small distance between molecules)\nL: Liquid (Bigger distance between molecules)\nG: Gas (Very big distance between molcules)\n?: Plasma (Biggest distance between molecules)")
                        .padding(.top, -5.0)
                        .padding(.bottom, 20.0)
                }
                
                
                Spacer()
            }
        }
        .padding(.horizontal)
    }
}


struct MatterView_Previews: PreviewProvider {
    static var previews: some View {
        MatterView()
            
    }
}
