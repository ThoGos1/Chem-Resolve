//
//  WaveParticleView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/12/21.
//

import SwiftUI

struct WaveParticleView: View {
    var body: some View {
        ZStack {
            Text("Wave Particle Duality").font(.largeTitle).fontWeight(.bold).padding(.bottom, 725)
            VStack {
                
                Group {
                    Text("Wave Particle Duality:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("The idea that something can act like a wave, like in diffraction, BUT also a particle at other times.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Diffraction:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Essentially splitting up waves to prove that waves behave like waves. Diffraction can lead to two kinds of change in amplitude.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Constructive Interference:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Increased amplitude of waves after a diffraction.\nThe amplitudes are added on top of each other.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Destructive Interference:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Decreased amplitude of waves after a diffraction.\nThe average of the two amplitudes.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("The De Broglie Relation:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("As a wave also has mass, because of the duality principle, which leads wavelengths to be proportional to mass in the form of Momentum (p)")
                    Image("broglie")
                        .padding(.top, -30.0).scaleEffect(0.7)
                }
                
                Group {
                    Text("Heisenberg Uncertainty Principle:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Uncertainty in momentum and uncertainty in position are inversly proportional up to a constant.")
                }
                
                Spacer()
            }
            .padding(.top, 55.0).padding()
        }
        
    }
}

struct WaveParticleView_Previews: PreviewProvider {
    static var previews: some View {
        WaveParticleView()
    }
}
