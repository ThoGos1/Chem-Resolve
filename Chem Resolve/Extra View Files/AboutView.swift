//
//  AboutView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 12/25/21.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            
            VStack {
                
                Text("About Me").font(.title).fontWeight(.bold).padding(.top, -10.0).padding(.bottom)
                
                GroupBox(label : Text("Thank You:")
                            .fontWeight(.bold)) {
                    
                    Text("Thank you for using Chem Resolve.\nChem Resolve has been developed by me, ThoGos.\nI'm a first-generation college student at University of California - San Diego.\nI made this app to help college students like myself, that would rather focus on learning & analysis, rather than busy work.")
                        .lineSpacing(8).padding(.bottom, 15.0)
                        .frame(width: 300.0)
                    
                }
                
                GroupBox(label : Text("Feedback:")
                            .fontWeight(.bold)) {
                    
                    Text("If you have any suggestions or general feedback, feel free to email me.\nMy Email address is: javalite@javalite.com")
                        .lineSpacing(8).padding(.bottom, 15.0)
                        .frame(width: 300.0)
                        .padding(.top, -5.0)
                        .offset(x: -1)
                }
                
                GroupBox(label : Text("Support Me:")
                            .fontWeight(.bold)) {
                    
                    Text("If you have enjoyed the features of Chem Resolve and you have some spare cash, a donation would be greatly appreciated and helps keep this app on the App Store.")
                        .lineSpacing(8)
                        .frame(width: 300.0)
                        .padding(.top, -5.0)
                    Text("(Tap and Hold to Copy)")
                        .multilineTextAlignment(.center)
                        .padding(.top, 0.5)
                        
                    GroupBox {
                        
                        Text("PayPal: @ThoGos1")
                            .textSelection(.enabled)
                        
                    }
                    .groupBoxStyle(PayPalGroupBox())
                    
                    
                    GroupBox {
                        
                        Text("Venmo: @ThoGos")
                            .textSelection(.enabled)
                        
                    }
                    .groupBoxStyle(VenmoGroupBox())
                    
                    GroupBox {
                        
                        Text("BTC: 34mAVv4kBWxH8yTDwHjgsLgkXSLh62S2M4")
                            .textSelection(.enabled)
                        
                    }
                    .groupBoxStyle(BitGroupBox())
                    
                }
                

                
                
                Spacer()
            }
            
        }
        .padding(.horizontal)
            
    }
        
}


struct PayPalGroupBox: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.content
            .padding()
            .padding(2)
            .background(RoundedRectangle(cornerRadius: 8).fill(Color(red: 0.4627, green: 0.8392, blue: 1.0)))
            .overlay(configuration.label.padding(.leading, 4), alignment: .topLeading)
    }
}


struct VenmoGroupBox: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.content
            .padding()
            .padding(2)
            .padding(.horizontal, 3)
            .background(RoundedRectangle(cornerRadius: 8).fill(Color(red: 0.2, green: 0.6392, blue: 1.0)))
            .overlay(configuration.label.padding(.leading, 4), alignment: .topLeading)
    }
}


struct BitGroupBox: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.content
            .padding()
            .padding(2)
            .padding(.horizontal, 3)
            .background(RoundedRectangle(cornerRadius: 8).fill(Color.orange))
            .overlay(configuration.label.padding(.leading, 4), alignment: .topLeading)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
