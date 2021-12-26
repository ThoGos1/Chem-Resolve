//
//  CompoundsView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/12/21.
//

import SwiftUI

struct CompoundsView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                
                Text("Compounds/Molecules:").font(.title).fontWeight(.bold).padding(.top, -10.0)
                
                GroupBox(label : Text("Compounds vs Molecules:")
                            .fontWeight(.bold)) {
                    Text("A compound is a substance made of two or more DIFFERENT elements.\nA molecule is a substance made of two or more DIFFERENT or SAME elements.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .multilineTextAlignment(.center)
                }
                
                GroupBox(label : Text("Covalent Bond:")
                            .fontWeight(.bold)) {
                    Text("When two nonmetals share valence electrons to achieve octet or duplet, to become more stable. Multiple covalent bonds can be created at the same time, which makes the bond stronger.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .multilineTextAlignment(.center)

                }
                
                GroupBox(label : Text("Electronegativity:")
                            .fontWeight(.bold)) {
                    Text("A scale from 0 to 4, stating how 'desperate' an atom is to form a bond, generally increasing when going to the right on the periodic table.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .multilineTextAlignment(.center)

                }
                
                GroupBox(label : Text("Polarity:")
                            .fontWeight(.bold)) {
                    Text("The difference in electronegativity of two atoms determines the compounds polarity.\nDifferences lower than 0.5 are nonpolar, differences between 0.5 and 2.0 are generally polar, and differences over 2.0 are ionic.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .multilineTextAlignment(.center)

                }
                
                GroupBox(label : Text("Ionic Compounds:")
                            .fontWeight(.bold)) {
                    Text("A cation gives an electron to an anion, which greates a VERY strong bond between the two ions, usually forming crystal lattices.")
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

struct CompoundsView_Previews: PreviewProvider {
    static var previews: some View {
        CompoundsView()
    }
}
