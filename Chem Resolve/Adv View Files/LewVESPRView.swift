//
//  LewVESPRView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 1/10/22.
//

import SwiftUI

struct LewVESPRView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                
                Text("Lewis Structures:").font(.title).fontWeight(.bold).padding(.top, -10.0)

                
                GroupBox(label : Text("Lewis Structure:")
                            .fontWeight(.bold)) {
                    Text("The way of showing the individual bonds in a molecule or compound. For covalent bonds they are lines and for ionic compounds each ion is just seperated.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .multilineTextAlignment(.center)
                }
                
                GroupBox(label : Text("Central Atom:")
                            .fontWeight(.bold)) {
                    Text("1. The atom with the highest ionization energy.\n2. There is only ONE of it.\n3. The atom with the lowest electronegativity.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .multilineTextAlignment(.center)
                }
                
                GroupBox(label : Text("Resonance:")
                            .fontWeight(.bold)) {
                    Text("If a compound can be drawn in different ways, each different way is a resonance, and the actual one will be a combination of all of the possibilities.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .multilineTextAlignment(.center)
                }
                
                GroupBox(label : Text("Formal Charge:")
                            .fontWeight(.bold)) {
                    Text("The LOWER (closest to 0) the number the more likely it is to be the ACTUAL Lewis structure. Works for individual atoms.")
                        .padding(.top, -5.0)
                        .multilineTextAlignment(.center)
                    Image("formal")
                        .padding(.bottom, 2.0)
                        .scaleEffect(0.3)                        .frame(width: 312.0, height: 24.0)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 4)
                            .stroke(Color.black, lineWidth: 3))

                }
                
                GroupBox(label : Text("Odd Valence Shells:")
                            .fontWeight(.bold)) {
                    Text("Usually atoms would want 8 electrons in their valence shell, but there are exceptions. Evey atom with n>=3 and has d-orbital can have an expanded valence shell. Whereas Boron and Beryllium can have 6 valence electrons.")
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

struct LewVESPRView_Previews: PreviewProvider {
    static var previews: some View {
        LewVESPRView()
    }
}
