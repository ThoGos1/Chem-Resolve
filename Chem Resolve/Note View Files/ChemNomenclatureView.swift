//
//  ChemNomenclatureView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/12/21.
//

import SwiftUI

struct ChemNomenclatureView: View {
    var body: some View {
        ZStack {
            Text("Chemical Nomenclature").font(.largeTitle).fontWeight(.bold).padding(.bottom, 725)
            VStack {

                Group {
                    Text("Nomeclature for covalent compounds:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("The non-metals are written in the following order:\nB     Si     C     As     P     N     H     Te     Se     S     O     At     I     Br     Cl     F\nThat's why water is H2O and not OH2.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Numeric Prefixes:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("In covalent compounds if there are multiple atoms you need to add a prefix in the name of the compound.")
                    Image("prefix")
                        .frame(width: 200.0, height: 390.0)
                        .scaleEffect(0.7)
                }
                
                
                Spacer()
            }
            .padding(.top, 55.0).padding()
        }
        
    }
}



struct ChemNomenclatureView_Previews: PreviewProvider {
    static var previews: some View {
        ChemNomenclatureView()
    }
}
