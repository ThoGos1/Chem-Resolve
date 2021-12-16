//
//  MatterView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 10/31/21.
//

import SwiftUI

struct MatterView: View {
    var body: some View {
        ZStack {
            Text("Properties of Matter").font(.largeTitle).fontWeight(.bold).padding(.bottom, 725)
            
            ScrollView {
                
                VStack {
                    
                    Group {
                        Text("Physical Properties:")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        Text("What a thing looks like, smells like, its color, mass, size, melting point, etc.")
                            .padding(.bottom, 20.0)
                    }
                    
                    Group {
                        Text("Chemical Properties:")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        Text("Characteristics of how it can change its chemical structure or composition.\nEx. Flammability")
                            .padding(.bottom, 20.0)
                    }
                    
                    Group {
                        Text("Substance:")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        Text("Single pure form of matter like H2 or NaCl, and nothing else in it")
                            .padding(.bottom, 20.0)
                    }
                    
                    Group {
                        Text("Extensive Properties:")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        Text("Properties that change when the size of an object changes, like volume, energy, and entropy")
                            .padding(.bottom, 20.0)
                    }
                    
                    Group {
                        Text("Intensive Properties:")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        Text("Properties that DO NOT change when the size changes, like density and temperature")
                            .padding(.bottom, 20.0)
                    }
                    
                    Group {
                        Text("Phase Change:")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        Text("Change between the 4 main phases:\nS: Solid (Small distance between molecules)\nL: Liquid (Bigger distance between molecules)\nG: Gas (Very big distance between molcules)\n?: Plasma (Biggest distance between molecules)")
                    }
                    
                    
                    Spacer()
                }
                
            }
            
            
            .padding(.top, 55.0).padding()
        }
        
    }
}







struct MatterView_Previews: PreviewProvider {
    static var previews: some View {
        MatterView()
    }
}
