//
//  ElectromagnetView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/12/21.
//

import SwiftUI

struct ElectromagnetView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                
                Text("Electromagnetism").font(.title).fontWeight(.bold).padding(.top, -10.0)
                
                GroupBox(label : Text("The electromagnetic field:")
                            .fontWeight(.bold)) {
                    Text("Particles are being moved very fast, either radio, x-rays, light waves, etc.\nAKA waves carrying energy.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .multilineTextAlignment(.center)
                }
                
                GroupBox(label : Text("Wavelength:")
                            .fontWeight(.bold)) {
                    Text("The peak to peak distance in nanometers.\nThe lower the wavelength the more energy, Ex. gamma-rays created the HULK.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .multilineTextAlignment(.center)
                }
                
                GroupBox(label : Text("Amplitude and Intensity:")
                            .fontWeight(.bold)) {
                    Text("Amplitude is the max height of the wave from the center line.\nIntensity of the wave is the ampliture squared, so higher amplitude is higher intensity.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .multilineTextAlignment(.center)

                }
                
                GroupBox(label : Text("Frequency:")
                            .fontWeight(.bold)) {
                    Text("How many cycles in a second, AKA how long the wave is in Hz.\n- The higher Hz, the shorter wavelength\n- The lower Hz, the longer wavelength")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .multilineTextAlignment(.center)
                }
                
                GroupBox(label : Text("Electromagnetism Calculations:")
                            .fontWeight(.bold)) {
                    Text("Speed of Light: 2.998∗10^8 m/s\nSpeed of Sound: 343.06 m/s\nHow wavelengths and frequencies are connected:\nSpeed of light = Wavelength ∗ Frequency.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .multilineTextAlignment(.center)
                }
                
                Spacer()
            }
            
        }
        .padding(.horizontal)
        
    }
}

struct ElectromagnetView_Previews: PreviewProvider {
    static var previews: some View {
        ElectromagnetView()
    }
}
