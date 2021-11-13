//
//  PeriodicTableView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/12/21.
//

import SwiftUI

struct PeriodicTableView: View {
    var body: some View {
        ZStack {
            Text("The Periodic Table").font(.largeTitle).fontWeight(.bold).padding(.bottom, 725)
            VStack {

                Group {
                    Text("Periods in Periodic Table:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Each element in the same period has the same amount of electron shells, ranging from 1 to 7.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Groups in Periodic Table:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Each element in the same group has the same amount of valence electrons.\nAKA they have the same chemistry.\nMagnitude of reactions increase as you go DOWN")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Main Group Elements:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Elements in groups 1 through 8, and they are the most simple to predict, as they follow all the rules.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Transition Metals:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("The elements in the middle of the periodic table, and they are harder to predict, as they can have different charges and electron configurations.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Lanthanoids and Actinoids:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("The elements that are outside the periodic table. They are all radioactive & have different charges.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Metals vs Metalloids vs Nonmetals:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Metals are conductable, malleable, and shiny. Nonmetals are the complete opposite. And Metalloids have characteristics of both.")
                }
                
                Spacer()
            }
            .padding(.top, 55.0).padding()
        }
        
    }
}

struct PeriodicTableView_Previews: PreviewProvider {
    static var previews: some View {
        PeriodicTableView()
    }
}
