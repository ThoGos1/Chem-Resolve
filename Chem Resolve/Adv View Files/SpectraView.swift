//
//  SpectraView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/12/21.
//∗

import SwiftUI

struct SpectraView: View {
    var body: some View {
        ZStack {
            Text("Atomic Spectra").font(.largeTitle).fontWeight(.bold).padding(.bottom, 725)
            VStack {

                Text("When an electric current passes through a gas, the gas emits light, as exited electrons are separated with the atom, and then they recombine and emit a photon.")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20.0)
                    .padding(/*@START_MENU_TOKEN@*/.top, -10.0/*@END_MENU_TOKEN@*/)
                
                Group {
                    Text("Spectral Lines of Hydrogen:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Lines in a spectrum for all the different light that Hydrogen atoms can emit.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Frequency of light between two lines:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Image("rydberg")
                        .padding(.top, -30.0).scaleEffect(0.7)
                    Text("R = 3.29∗10^15 Hz.\nThe frequency can be used to find the wavelength, which can be used to determine which color is emitted from the electron.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Balmer Series:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("The Balmer Series consists of the 4 wavelengths at which Hydrogens emitted light is visible.\n656 nm, 486 nm, 434 nm, and 410 nm.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Lyman Series:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("The Lyman Series consists of the 3 wavelengths at which Hydrogens emitted light is ultraviolet.\n121 nm, 102 nm, and 97 nm.")
                }
                
                Spacer()
            }
            .padding(.top, 55.0).padding()
        }
        
    }
}

struct SpectraView_Previews: PreviewProvider {
    static var previews: some View {
        SpectraView()
    }
}
