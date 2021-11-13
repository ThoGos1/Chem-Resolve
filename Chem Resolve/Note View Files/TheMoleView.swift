//
//  TheMoleView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/11/21.
//

import SwiftUI

struct TheMoleView: View {
    var body: some View {
        ZStack {
            Text("The Mole").font(.largeTitle).fontWeight(.bold).padding(.bottom, 725)
            VStack {
                
                Group {
                    Text("Mole:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("6.0221 * 10^23 atoms/ions/molecules in 1 mole.\nYou can also use SI prefixes for moles")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Chemical Amount:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("The formal way of saying how much there is of a certain substance.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Relationship between moles and mass:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Image("moleconv").padding(.top, -30.0).frame(width: 1.0).scaleEffect(0.6)
                    Text("'n' = amount of stuff (moles)\n'M' = molar mass (g/mol)\n'm' = mass (g)")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Empirical Formula:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("The ratio of elements in a molecules like CH2O for glucose is 1:2:1, even though the molecular formula says C6H12O6.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Mass Percentage Composition:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("The elements mass divided by the TOTAL mass of the sample, to get how much of something is in the whole.")
                }
                
                
                Spacer()
            }
            .padding(.top, 55.0).padding()
        }
        
    }
}

struct TheMoleView_Previews: PreviewProvider {
    static var previews: some View {
        TheMoleView()
    }
}
