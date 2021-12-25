//
//  WaveNNodeView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/12/21.
//

import SwiftUI

struct WaveNNodeView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                
                Text("Wave Function & Nodes:").font(.title).fontWeight(.bold).padding(.top, -10.0)
                
                GroupBox(label : Text("The Wave Function:")
                            .fontWeight(.bold)) {
                    Text("A function for the trajectory of light as a wave, also know as Schrodinger's equation.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Probability Density:")
                            .fontWeight(.bold)) {
                    Text("Schrodinger's equation SQUARED.\nThe probability that an electron will be found in a small region of volume.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .offset(x: -1)
                }
                
                GroupBox(label : Text("Node:")
                        .fontWeight(.bold)) {
                    Text("A location where the electron WON'T travel, aka the wavefunction = 0.\nAngular Nodes are the found between orbital lobels (l-value).\nRadial Nodes are between energy levels, as they can only be integers (n - 1 - l).")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Allowed energy for each level:")
                            .fontWeight(.bold)) {
                    Image("allowed")
                        .padding(.trailing, 2.0)
                        .scaleEffect(0.8)                        .frame(width: 180.0, height: 68.0)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 3))
                        
                    Text("The energy of any energy level 'n' can be found for any one-electron atom with atomic number 'Z'.")
                        .padding(.bottom, 20.0)
                }
                
                GroupBox(label : Text("Why is energy NEGATIVE:")
                            .fontWeight(.bold)) {
                    Text("Energy is negative because, it's compared to the energy of a free electron. This means how much ENERGY is needed to POP-OFF an electron.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .offset(x: -13)
                }
                
                
                Spacer()
            }
            
        }
        .padding(.horizontal)
        
    }
}

struct WaveNNodeView_Previews: PreviewProvider {
    static var previews: some View {
        WaveNNodeView()
    }
}
