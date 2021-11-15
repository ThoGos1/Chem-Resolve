//
//  QuantaNumView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/13/21.
//

import SwiftUI

struct QuantaNumView: View {
    var body: some View {
        ZStack {
            Text("Quantum Numbers").font(.largeTitle).fontWeight(.bold).padding(.bottom, 725)
            VStack {
                
                Group {
                    Text("Quantum Numbers:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("There are 3 quantum numbers that determines the electron configuration of atoms.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Principal Quantum Number (n):")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("The HIGHER the n-value the further away it is from the nucleus, until it's free at 'infinity'.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Orbital Angular Momentum Quantum Number:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("The l-value is related to the shape of the orbital.\nl = 0, 1, 2, 3 … n-1")
                    Image("orbital")
                        .padding(.top, -30.0).frame(width: 380.0, height: 150.0).scaleEffect(0.55)
                }
                
                Group {
                    Text("Magnetic Quantum Number (ml):")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("The description of the shape, like orientation.\nRange = -l to +l")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Electron Spin (ms):")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Two electrons can have the same n, l, ml, but different spins.\nEither 0.5 or -0.5")
                }
                
                Spacer()
            }
            .padding(.top, 55.0).padding()
        }
        
    }
}

struct QuantaNumView_Previews: PreviewProvider {
    static var previews: some View {
        QuantaNumView()
    }
}
