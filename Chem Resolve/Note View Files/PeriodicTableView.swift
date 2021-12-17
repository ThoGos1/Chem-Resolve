//
//  PeriodicTableView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/12/21.
//

import SwiftUI

struct PeriodicTableView: View {
    var body: some View {
        
        ScrollView {
            VStack {
                
                Text("The Periodic Table").font(.title).fontWeight(.bold).padding(.top, -10.0)
                
                GroupBox(label : Text("Periods in Periodic Table:")
                            .fontWeight(.bold)) {
                    Text("Each element in the same period has the same amount of electron shells, ranging from 1 to 7.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Groups in Periodic Table:")
                            .fontWeight(.bold)) {
                    Text("Each element in the same group has the same amount of valence electrons.\nAKA they have the same chemistry.\nMagnitude of reactions increase as you go DOWN")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Main Group Elements:")
                            .fontWeight(.bold)) {
                    Text("Elements in groups 1 through 8, and they are the most simple to predict, as they follow all the rules.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Transition Metals:")
                            .fontWeight(.bold)) {
                    Text("The elements in the middle of the periodic table, and they are harder to predict, as they can have different charges and electron configurations.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Lanthanoids and Actinoids:")
                            .fontWeight(.bold)) {
                    Text("The elements that are outside the periodic table. They are all radioactive & have different charges.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Metals vs Metalloids vs Nonmetals:")
                        .fontWeight(.bold)) {
                    Text("Metals are conductable, malleable, and shiny. Nonmetals are the complete opposite. And Metalloids have characteristics of both. They are seperated by a 'staircase' that starts from Boron and Aluminium.")
                        .padding(.top, -5.0)
                        .padding(.bottom, 20.0)
                }
                
                Spacer()
            }
        }
        .padding(.horizontal)
    }
}

struct PeriodicTableView_Previews: PreviewProvider {
    static var previews: some View {
        PeriodicTableView()
    }
}
