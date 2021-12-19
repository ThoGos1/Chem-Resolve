//
//  EmpirePercentView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 12/17/21.
//

import SwiftUI

struct EmpirePercentView: View {
    
    @State private var cp: String = ""
    @State private var op: String = ""
    @State private var hp: String = ""
    @State private var molmass: String = ""
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                
                Text("Formula from Percentages").font(.title).fontWeight(.bold).padding(.top, -10.0)

                
                Text("Enter the variables that you know:")
                    .fontWeight(.black)
                    .padding(.vertical)
                
                
                GroupBox {
                    
                    Group {
                        Text("Enter Percentage of Carbon:")
                            .fontWeight(.semibold)
                        
                        TextField("Carbon (Ex. 40.9)",text: $cp)
                            .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                    }
                    
                    Group {
                        Text("Enter Percentage of Hydrogen:")
                            .fontWeight(.semibold)
                        
                        TextField("Hydrogen (Ex. 4.58)",text: $hp)
                            .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                    }
                    
                    
                    Group {
                        Text("Enter Percentage of Oxygen:")
                            .fontWeight(.semibold)
                        
                        TextField("Oxygen (Ex. 54.5)",text: $hp)
                            .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                    }
                    
                    
                    Group {
                        Text("Empirical Formula of Hydrocarbon:")
                            .fontWeight(.semibold)
                        
                        Text(getEfromP(cper:cp, hper: hp, oper: op))
                            .padding(.bottom, 25.0)
                    }
                    
                }
                
                
                GroupBox {
                    Group {
                        Text("Enter Molar Mass of Hydrocarbon:")
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                        
                        TextField("Molar Mass (Ex. 30.07)",text: $molmass)
                            .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                    }
                    
                    Group {
                        Text("Molecular Formula of Hydrocarbon:")
                            .fontWeight(.semibold)
                        
                        Text("molecular from emprieacl")
                    }
                    
                }
                
                Spacer()
                
            }
            
        }
        .padding(.horizontal)
        
        
    }
}


func getEfromP(cper: String, hper: String, oper: String) -> String {
    
    let cmol = ((Double(cper) ?? 1) / 12)
    let hmol = ((Double(hper) ?? 1) / 1)
    let omol = ((Double(oper) ?? 1) / 16)
    var horcoro = "carb"
    var factor = 0.0
    var cc = 0.0
    var hc = 0.0
    var oc = 0.0
    var molarr = [cmol, hmol, omol]
    
    
    
    if(cper == "" || hper == "") {
        return "None"
    }
    
    
    if(molarr.min() == Optional(cmol)){
        
    }
    
    
    
    
    
    
    return "suiii"
}




struct EmpirePercentView_Previews: PreviewProvider {
    static var previews: some View {
        EmpirePercentView()
    }
}
