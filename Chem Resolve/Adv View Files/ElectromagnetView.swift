//
//  ElectromagnetView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/12/21.
//

import SwiftUI

struct ElectromagnetView: View {
    var body: some View {
        ZStack {
            Text("Electromagnetism").font(.largeTitle).fontWeight(.bold).padding(.bottom, 725)
            VStack {

                Group {
                    Text("The electromagnetic field:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Particles are being moved very fast, either radio, x-rays, light waves, etc.\nAKA waves carrying energy.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Wavelength:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("The peak to peak distance in nanometers.\nThe lower the wavelength the more energy, Ex. gamma-rays created the HULK.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Amplitude and Intensity:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Amplitude is the height of the wave over the center line.\nIntensity of the wave is the ampliture squared, so higher amplitude is higher intensity.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Frequency:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("How many cycles in a second, AKA how long the wave is in Hz.\n- The higher Hz, the shorter wavelength\n- The lower Hz, the longer wavelength")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Commonly used numbers and equations:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Speed of Light: 2.998∗10^8 m/s\nSpeed of Sound: 343.06 m/s\nHow wavelengths and frequencies are connected:\nSpeed of light = Wavelength ∗ Frequency.")
                }
                
                Spacer()
            }
            .padding(.top, 55.0).padding()
        }
        
    }
}

struct ElectromagnetView_Previews: PreviewProvider {
    static var previews: some View {
        ElectromagnetView()
    }
}
