//
//  ElConfigNoteView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/13/21.
//

import SwiftUI

struct ElConfigNoteView: View {
    var body: some View {
        ZStack {
            Text("Electron Configuration").font(.largeTitle).fontWeight(.bold).padding(.bottom, 725)
            VStack {
                
                Group {
                    Text("Quantum Numbers in electron configuration:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Letter is l-value.\nThe first number is n-value.\nThe exponent is the number of electrons.")
                    Image("configpic")
                        .padding(.top, -30.0).frame(width: nil, height: 85.0).scaleEffect(0.4)
                }
                
                Group {
                    Text("d and f shell Exceptions:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Each row is the 'n-value' for s and p.\nFor d the 'n-value' is row-1\nFor f the 'n-value' is row-2")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Metal Exceptions:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("d^4 metals actually always go to d^5\nd^9 metals always go to d^10\nThis is because energy from the 4s orbital gives an electron to them, with just a tiny amount of energy needed.")
                        .padding(.bottom, 20.0)
                }
                
                Group {
                    Text("Hund's Rule:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("As electrons are added to an atom, they go to each orbital alone, and then when each orbital has ONE electron, then electrons are added randomly to the orbitals to make them 'full'.\nThe first electron will always be +0.5 spin.\nKinda like Kalaha game.")
                }
                
                Spacer()
            }
            .padding(.top, 55.0).padding()
        }
        
    }
}

struct ElConfigNoteView_Previews: PreviewProvider {
    static var previews: some View {
        ElConfigNoteView()
    }
}
