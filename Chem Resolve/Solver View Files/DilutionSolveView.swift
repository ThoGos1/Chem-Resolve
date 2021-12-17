//
//  DilutionSolveView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/23/21.
//

import SwiftUI

struct DilutionSolveView: View {
    @State private var c1: String = ""
    @State private var c2: String = ""
    
    @State private var v1: String = ""
    @State private var v2: String = ""
    
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                
                Text("Bond Characteristics").font(.title).fontWeight(.bold).padding(.top, -10.0)

                
                Text("Enter the varibles that you know:")
                    .fontWeight(.black)
                    .padding(.vertical)
                
                GroupBox {
                    Group {
                        Text("Enter Concentration 1 (mol/L) (if known):")
                            .fontWeight(.semibold)
                        
                        TextField("Concentration (Ex. 5)",text: $c1)
                            .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                    }
                    
                    
                    Group {
                        Text("Enter Concentration 2 (mol/L) (if known):")
                            .fontWeight(.semibold)
                        
                        TextField("Concentration (Ex. 3)",text: $c2)
                            .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                    }
                    
                    
                    Group {
                        Text("Enter Volume 1 (L) (if known):")
                            .fontWeight(.semibold)
                        
                        TextField("Volume (Ex. 0.05)",text: $v1)
                            .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                    }
                    
                    Group {
                        Text("Enter Volume 2 (L) (if known):")
                            .fontWeight(.semibold)
                        
                        TextField("Volume (Ex. 0.3)",text: $v2)
                            .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                    }
                    
                    Group {
                        Text(varmiss(con1: c1, con2: c2, vol1: v1, vol2: v2))
                            .fontWeight(.semibold)
                        Text(getDilVar(con1: c1, con2: c2, vol1:v1, vol2: v2))
                    }
                    
                }
                
                
                
                Spacer()
                
            }
            
        }
        .padding(.horizontal)
    }
}


func getDilVar(con1: String, con2: String, vol1: String, vol2: String) -> String {
    
    let co1 = Float(con1) ?? 1.0
    
    let co2 = Float(con2) ?? 1.0
    
    let vo1 = Float(vol1) ?? 1.0
    
    let vo2 = Float(vol2) ?? 1.0
    
    
    if(con1 == "" && vol1 != "") && vol2 != "" && con2 != "" {

        return String(co2*vo2/vo1)
        
    }
    
    if(con2 == "" && vol1 != "" && con1 != "" && vol2 != "") {

        return String(co1*vo1/vo2)
        
    }
    
    if(vol1 == "" && vol2 != "" && con1 != "" && con2 != "") {
        
        return String(co2*vo2/co1)
        
    }
    
    if(vol2 == "" && vol1 != "" && con1 != "" && con2 != "") {

        return String(co1*vo1/co2)
        
    }
    
    if(vol2 != "" && vol1 != "" && con1 != "" && con2 != "") {

        return "You have entered all variables, there is nothing to solve"
        
    }
    
    return "Enter three variables to get the last"
}


func varmiss(con1: String, con2: String, vol1: String, vol2: String) -> String {
    
    if(con1 == "" && vol1 != "" && vol2 != "" && con2 != "") {

        return "Concentration 1:"
        
    }
    
    if(con2 == "" && vol1 != "" && con1 != "" && vol2 != "") {

        return "Concentration 2:"
        
    }
    
    if(vol1 == "" && vol2 != "" && con1 != "" && con2 != "") {
        
        return "Volume 1:"
        
    }
    
    if(vol2 == "" && vol1 != "" && con1 != "" && con2 != "") {

        return "Volume 2:"
        
    }
    
    
    return "Missing Variable Here:"
    
}






struct DilutionSolveView_Previews: PreviewProvider {
    static var previews: some View {
        DilutionSolveView()
    }
}
