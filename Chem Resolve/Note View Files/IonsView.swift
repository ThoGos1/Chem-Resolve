//
//  IonsView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/12/21.
//

import SwiftUI

struct IonsView: View {
    var body: some View {
        ZStack {
            Text("Ions").font(.largeTitle).fontWeight(.bold).padding(.bottom, 725)
            VStack {

                Group {
                    Text("Ion:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("An atom that loses or gain an atom to achieve octet or duplet, so it can be more stable.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Cations & Anions:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("A cation loses electrons, so they are positive and smaller than the original atom.\nWhereas an anion gains electrons, so they are negative and larger than the original atom.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Monatomic Ion:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("A single atom turning into an ion, Ex. Na+ or Cl-")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Polyatomic Ion:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("An ion made up of multiple atoms, Ex. SO4-")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Isoelectric:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("This means that an atom has the same amount of electrons as another, but it is usually used in the context of ions getting the same amount of electrons as a noble gas\nEx. Na = 1s1 2s2 2p6 3s1\nSo if it loses the 3s1 it will become Neon.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Ion Nomenclature:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("For cations they keep their name but it has '-ion' added on the end, and if it's a transition metal it has the ion charge in parentheses, Ex. Iron (III).\nMonatomic anions just get the ending '-ide'.")
                }
                
                Spacer()
            }
            .padding(.top, 55.0).padding()
        }
        
    }
}

struct IonsView_Previews: PreviewProvider {
    static var previews: some View {
        IonsView()
    }
}
