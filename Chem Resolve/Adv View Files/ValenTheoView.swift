//
//  ValenTheoView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 1/15/22.
//

import SwiftUI

struct ValenTheoView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                
                Text("Valence-Bond Theory:").font(.title).fontWeight(.bold).padding(.top, -10.0)

                
                GroupBox(label : Text("Internuclear Axis::")
                            .fontWeight(.bold)) {
                    Text("A straight line that goes through the nuclei of two bonding atoms.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .multilineTextAlignment(.center)
                }
                
                GroupBox(label : Text("Sigma Bond:")
                            .fontWeight(.bold)) {
                    Text("When atoms overlap ON the internuclear axis. Creates a sausage shape between the atom circles. For p-orbitals the phases/colors HAVE the be the same.\nALL single covalent bonds ARE sigma bonds.\nPOSSIBILITIES:\n- Two 's' orbitals overlap\n- One 'p' orbital lobe overlaps with one 's' orbital\n- Two 'p' orbital lobes overlapping")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .multilineTextAlignment(.center)
                }
                
                GroupBox(label : Text("Pi Bonds:")
                            .fontWeight(.bold)) {
                    Text("When atoms overlap PERPENDICULAR to the internuclear axis, side by side. They create a NODE. The overlap is LESS than sigma bonds, so they are WEAKER. They happen AFTER the first sigma bond, never before. ROTATING a PI bond will not be the same at every rotation, unlike a sigma bond.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .multilineTextAlignment(.center)
                }
                
                GroupBox(label : Text("Bond Order from Sigma and Pi:")
                            .fontWeight(.bold)) {
                    Text("Single Bond: One sigma bond\nDouble Bond: One sigma bond AND one pi bond\nTriple Bond: One sigma bond AND two pi bonds")
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

struct ValenTheoView_Previews: PreviewProvider {
    static var previews: some View {
        ValenTheoView()
    }
}
