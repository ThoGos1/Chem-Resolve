//
//  ChemNomenclatureView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/12/21.
//

import SwiftUI

struct ChemNomenclatureView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                
                Text("Chemical Nomeclature").font(.title).fontWeight(.bold).padding(.top, -10.0)
                
                GroupBox(label : Text("Nomeclature for covalent compounds:")
                            .fontWeight(.bold)) {
                    Text("The non-metals are written in the following order:\nB     Si     C     As     P     N     H     Te     Se     S     O     At     I     Br     Cl     F\nThat's why water is H2O and not OH2.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                GroupBox(label : Text("Numeric Prefixes:")
                            .fontWeight(.bold)) {
                    Text("In covalent compounds if there are multiple atoms you need to add a prefix in the name of the compound.")
                        .padding(.top, -5.0)
                    Image("prefix")
                        .scaleEffect(0.74)                        .frame(width: 300.0, height: 405.0)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 3))
                }
                
                
                Spacer()
            }
            
        }
        .padding(.horizontal)
        
    }
}



struct ChemNomenclatureView_Previews: PreviewProvider {
    static var previews: some View {
        ChemNomenclatureView()
    }
}
