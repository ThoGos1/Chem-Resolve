//
//  ElConfigNoteView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/13/21.
//

import SwiftUI

struct ElConfigNoteView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                
                Text("Electron configuration:").font(.title).fontWeight(.bold).padding(.top, -10.0)

                
                GroupBox(label : Text("Quantum Numbers in electron configuration:")
                            .fontWeight(.bold)) {
                    Text("Letter is l-value.\nThe first number is n-value.\nThe exponent is the number of electrons.")
                        .padding(.top, -5.0)
                        .offset(x: -38)
                    Image("configpic")
                        .scaleEffect(0.47)                        .frame(width: 150.0, height: 110.0)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 3))
                }
                
                GroupBox(label : Text("'d' and 'f' shell Exceptions:")
                            .fontWeight(.bold)) {
                    Text("Each row is the 'n-value' for s and p.\nFor d the 'n-value' is row-1\nFor f the 'n-value' is row-2")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .offset(x: -7)
                }
                
                GroupBox(label : Text("Metal Exceptions:")
                            .fontWeight(.bold)) {
                    Text("d^4 metals actually always go to d^5\nd^9 metals always go to d^10\nThis is because energy from the 4s orbital gives an electron to them, with just a tiny amount of energy needed.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                        .offset(x: -2)
                }
                
                GroupBox(label : Text("Hund's Rule:")
                            .fontWeight(.bold)) {
                    Text("As electrons are added to an atom, they go to each orbital alone, and then when each orbital has ONE electron, then electrons are added randomly to the orbitals to make them 'full'.\nThe first electron will always be +0.5 spin.\nKinda like Kalaha game.")
                        .padding(.bottom, 20.0)
                        .padding(.top, -5.0)
                }
                
                Spacer()
            }
            
        }
        .padding(.horizontal)
        
    }
}

struct ElConfigNoteView_Previews: PreviewProvider {
    static var previews: some View {
        ElConfigNoteView()
    }
}
