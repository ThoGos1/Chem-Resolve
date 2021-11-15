//
//  WaveNNodeView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/12/21.
//

import SwiftUI

struct WaveNNodeView: View {
    var body: some View {
        ZStack {
            Text("Wave Function & Nodes").font(.largeTitle).fontWeight(.bold).padding(.bottom, 725)
            VStack {
                
                Group {
                    Text("The Wave Function:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("A function for the trajectory of light as a wave, also know as Schrodinger's equation.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Probability Density:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Schrodinger's equation SQUARED.\nThe probability that an electron will be found in a small region of volume.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Node:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("A location where the electron WON'T travel, aka the wavefunction = 0.\nAngular Nodes are the found between orbital lobels (l-value).\nRadial Nodes are between energy levels, as they can only be integers (n - 1 - l).")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Allowed energy for each level:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Image("allowed")
                        .padding(.top, -30.0).scaleEffect(0.7).padding(.bottom, -15.0)
                    Text("The energy of any energy level 'n' can be found for any one-electron atom with atomic number 'Z'.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Why is energy NEGATIVE:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Energy is negative because, it's compared to the energy of a free electron. This means how much ENERGY is needed to POP-OFF an electron.")
                }
                
                
                Spacer()
            }
            .padding(.top, 55.0).padding()
        }
        
    }
}

struct WaveNNodeView_Previews: PreviewProvider {
    static var previews: some View {
        WaveNNodeView()
    }
}
