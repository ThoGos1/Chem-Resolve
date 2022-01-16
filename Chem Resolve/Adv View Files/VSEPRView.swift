//
//  VSEPRView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 1/10/22.
//

import SwiftUI

struct VSEPRView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                
                Text("VSEPR Model:").font(.title).fontWeight(.bold).padding(.top, -10.0)

                
                GroupBox(label : Text("VSEPR Model:")
                            .fontWeight(.bold)) {
                    Text("The Valence Shell Electron Pair Repulsion Model:\nThe electrons repel each other in covalent bonds and they try to stay as far a part as possible, which results in angles and weird 3D structures.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .multilineTextAlignment(.center)
                }
                
                GroupBox(label : Text("Electron Domains/Regions:")
                            .fontWeight(.bold)) {
                    Text("All of the following count as ONE domain. They are counted ON the CENTRAL atom.\n- Lone pairs\n- Single bond\n- Double bond\n- Triple bond")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .multilineTextAlignment(.center)
                }
                
                GroupBox(label : Text("Electric Geometry Degrees:")
                            .fontWeight(.bold)) {
                    Text("Linear (2 domains): 180\nTrigonal Planar (3 domains): 120\nTetrahedral (4 domains): 109.5\nTrigonal Bipyramidal (5 domains): 3∗120 AND 2∗180, but kinda 90 compared to other atoms\nOctahedral (6 domains): 4∗90 AND 2∗180, but kinda 90 compared to other atoms")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .multilineTextAlignment(.center)
                }
                
                Text("IF there are NO lone pairs on central atom, then the molecular geometry is the SAME as the electronic geometry.")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 10.0)
                
                GroupBox(label : Text("Molecular Geometry:")
                            .fontWeight(.bold)) {
                    Text("If there are lone pairs the angle is going to decrease, as bonding pairs are there. This is the order of repulsion force:\n- Lone pair TO lone pair\n- Lone pair TO bonding pair\n- Bonding pair TO bonding pair\nEx.\nFor H2O, the angle between H and H is smaller than the angle between the two lone pairs on O.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .multilineTextAlignment(.center)

                }
                
                GroupBox(label : Text("Geometry and Polarity:")
                            .fontWeight(.bold)) {
                    Text("A general rule is that if the molecule is symmetrical then it is non-polar. ALSO if there is a single lone pair in any molecule then it is automatically polar. There is a table under 'Extra' for each shape.")
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

struct VSEPRView_Previews: PreviewProvider {
    static var previews: some View {
        VSEPRView()
    }
}
