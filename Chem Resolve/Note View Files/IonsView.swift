//
//  IonsView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/12/21.
//

import SwiftUI

struct IonsView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            
            VStack {

                Text("Ions").font(.title).fontWeight(.bold).padding(.top, -10.0)
                
                GroupBox(label : Text("Ion:")
                            .fontWeight(.bold)) {
                    Text("An atom that loses or gain an atom to achieve octet or duplet, so it can be more stable.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .offset(x: -5)
                }
                
                GroupBox(label : Text("Cations & Anions:")
                            .fontWeight(.bold)) {
                    Text("A cation loses electrons, so they are positive and smaller than the original atom.\nWhereas an anion gains electrons, so they are negative and larger than the original atom.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .offset(x: -4)
                }
                
                GroupBox(label : Text("Monatomic Ion:")
                        .fontWeight(.bold)) {
                    Text("A single atom turning into an ion, Ex. Na+ or Cl-")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .offset(x: -5)
                }
                
                GroupBox(label : Text("Polyatomic Ion:")
                            .fontWeight(.bold)) {
                    Text("An ion made up of multiple atoms that are bonded together by covalent bonds, Ex. SO4-")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .offset(x: -1)
                }
                
                GroupBox(label : Text("Isoelectric:")
                            .fontWeight(.bold)) {
                    Text("An atom has the same amount of electrons as another, usually ions get the same as noble gases.\nEx. Na = 1s1 2s2 2p6 3s1\nSo if it loses the 3s1 it will become Neon.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .offset(x: -6)
                }
                
                GroupBox(label : Text("Ion Nomenclature:")
                            .fontWeight(.bold)) {
                    Text("For cations they keep their name but it has '-ion' added on the end, and if it's a transition metal it has the ion charge in parentheses, Ex. Iron (III).\nMonatomic anions just get the ending '-ide'.")
                        .padding(.top, -5.0)
                        .padding(.bottom, 20.0)
                }
                
                Spacer()
            }
            
        }
        .padding(.horizontal)
        
    }
}

struct IonsView_Previews: PreviewProvider {
    static var previews: some View {
        IonsView()
    }
}
