//
//  WaveParticleView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/12/21.
//

import SwiftUI

struct WaveParticleView: View {
    var body: some View {
        
        ScrollView {
            VStack {
                
                Text("Wave Particle Duality:").font(.title).fontWeight(.bold).padding(.top, -10.0)

                GroupBox(label : Text("Wave Particle Duality:")
                            .fontWeight(.bold)) {
                    Text("The idea that something can act like a wave, like in diffraction, BUT also a particle at other times.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Diffraction:")
                            .fontWeight(.bold)) {
                    Text("Essentially splitting up waves to prove that waves behave like waves. Diffraction can lead to two kinds of change in amplitude.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Constructive Interference:")
                            .fontWeight(.bold)) {
                    Text("Increased amplitude of the waves after a diffraction.\nThe amplitudes are added on top of each other.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Destructive Interference:")
                            .fontWeight(.bold)) {
                    Text("Decreased amplitude of the waves after a diffraction.\nThe average of the two amplitudes.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("The De Broglie Relation:")
                            .fontWeight(.bold)) {
                    Text("As a wave also has mass, because of the duality principle, which leads wavelengths to be proportional to mass in the form of Momentum (p)")
                        .padding(.top, -5.0)
                    Image("broglie")
                        .scaleEffect(0.8)                        .frame(width: 70.0, height: 67.0)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 3))
                }
                
                GroupBox(label : Text("Heisenberg Uncertainty Principle:")
                            .fontWeight(.bold)) {
                    Text("Uncertainty in momentum and uncertainty in position are inversly proportional up to a constant.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                
                Spacer()
            }
            
        }
        .padding(.horizontal)
        
    }
}

struct WaveParticleView_Previews: PreviewProvider {
    static var previews: some View {
        WaveParticleView()
    }
}
