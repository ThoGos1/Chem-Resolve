//
//  TheMoleView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/11/21.
//

import SwiftUI

struct TheMoleView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                
                Text("The Mole").font(.title).fontWeight(.bold).padding(.top, -10.0)
                
                GroupBox(label : Text("Mole:")
                            .fontWeight(.bold)) {
                    Text("6.0221 * 10^23 atoms/ions/molecules in 1 mole.\nYou can also use SI prefixes for moles")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Chemical Amount:")
                            .fontWeight(.bold)) {
                    Text("The formal way of saying how much there is of a certain substance.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Relationship between moles and mass:")
                            .fontWeight(.bold)) {
                    Image("moleconv")
                        .scaleEffect(0.5)                        .frame(width: 300.0, height: 82.0)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 3))
                    Text("'n' = amount of stuff (moles)\n'M' = molar mass (g/mol)\n'm' = mass (g)\n'c' = concentration (mol/L)\n'V' = Volume (L)")
                        .padding(.bottom, 20.0)
                }
                
                GroupBox(label : Text("Empirical Formula:")
                            .fontWeight(.bold)) {
                    Text("The ratio of elements in a molecules like CH2O for glucose is 1:2:1, even though the molecular formula says C6H12O6.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Mass Percentage Composition:")
                            .fontWeight(.bold)) {
                    Text("The elements mass divided by the TOTAL mass of the sample, to get how much of something is in the whole.")
                        .padding(.top, -5.0)
                        .padding(.bottom, 20.0)
                }
                
                
                Spacer()
            }
        }
        .padding(.horizontal)
        
    }
}

struct TheMoleView_Previews: PreviewProvider {
    static var previews: some View {
        TheMoleView()
    }
}
