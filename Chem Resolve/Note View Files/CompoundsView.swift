//
//  CompoundsView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/12/21.
//

import SwiftUI

struct CompoundsView: View {
    var body: some View {
        ZStack {
            Text("Compounds & Molecules").font(.largeTitle).fontWeight(.bold).padding(.bottom, 725)
            VStack {

                Group {
                    Text("Compounds vs Molecules:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("A compound is a substance made of two or more DIFFERENT elements.\nA molecule is a substance made of two or more DIFFERENT or SAME elements.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Covalent Bond:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("When two nonmetals share valence electrons to achieve octet.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Electronegativity:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("A scale from 0 to 4, stating how 'desperate' an atom is to form a bond, generally increasing when going to the right on the periodic table.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Polarity:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("The difference in electronegativity of two atoms determines the compounds polarity.\nDifferences lower than 0.5 are nonpolar, differences between 0.5 and 2.0 are generally polar, and differences over 2.0 are ionic.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Ionic Compounds:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("A cation gives an electron to an anion, which greates a VERY strong bond between the two ions, usually forming crystal lattices.")
                }
                
                Spacer()
            }
            .padding(.top, 55.0).padding()
        }
        
    }
}

struct CompoundsView_Previews: PreviewProvider {
    static var previews: some View {
        CompoundsView()
    }
}
