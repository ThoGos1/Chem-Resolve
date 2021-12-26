//
//  SpectraView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/12/21.
//∗

import SwiftUI

struct SpectraView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {

                Text("Atomic Spectra").font(.title).fontWeight(.bold).padding(.top, -10.0)
                
                Text("When an electric current passes through a gas, the gas emits light, as excited electrons are separated from the atom, and then they recombine and emit a photon.")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20.0)
                    .padding(/*@START_MENU_TOKEN@*/.top, -10.0/*@END_MENU_TOKEN@*/)
                
                GroupBox(label : Text("Spectral Lines of Hydrogen:")
                            .fontWeight(.bold)) {
                    Text("Lines in a spectrum for all the different light that Hydrogen atoms can emit.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .multilineTextAlignment(.center)

                }
                
                GroupBox(label : Text("Frequency of light between two lines:")
                            .fontWeight(.bold)) {
                    Image("rydberg")
                        .padding(.trailing, 1.0)
                        .frame(width: 191.0, height: 67.0)
                        .scaleEffect(0.7).cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 3))
                    Text("R = 3.29∗10^15 Hz.\nThe frequency can be used to find the wavelength, which can be used to determine which color is emitted from the electron.")
                        .padding(.bottom, 20.0)
                        .multilineTextAlignment(.center)

                }
                
                GroupBox(label : Text("Balmer Series:")
                        .fontWeight(.bold)) {
                    Text("The Balmer Series consists of the 4 wavelengths at which Hydrogens emitted light is visible.\n656 nm, 486 nm, 434 nm, and 410 nm.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .multilineTextAlignment(.center)
                }
                
                GroupBox(label : Text("Lyman Series:")
                            .fontWeight(.bold)) {
                    Text("The Lyman Series consists of the 3 wavelengths at which Hydrogens emitted light is ultraviolet.\n121 nm, 102 nm, and 97 nm.")
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

struct SpectraView_Previews: PreviewProvider {
    static var previews: some View {
        SpectraView()
    }
}
