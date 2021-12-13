//
//  CHCombustView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 12/12/21.
//

import SwiftUI

struct CHCombustView: View {
    @State private var co2: String = ""
    @State private var h2o: String = ""
    @State private var molmass: String = ""
    
    var body: some View {
        ZStack {
            Text("CxHy Combusion Analysis:").font(.largeTitle).fontWeight(.bold).multilineTextAlignment(.center).padding(.bottom, 725)
            
            VStack {
                
                Text("Enter the varibles that you know:")
                    .fontWeight(.black)
                    .padding(.bottom)
                    .padding(.top, 40.0)
                
                
                Group {
                    Text("Enter grams of CO2 produced:")
                        .fontWeight(.semibold)
                    
                    TextField("CO2 (Ex. 13.2)",text: $co2)
                        .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                }
                
                Group {
                    Text("Enter grams of H2O produced:")
                        .fontWeight(.semibold)
                    
                    TextField("H2O (Ex. 1.8)",text: $h2o)
                        .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                }
                
                Group {
                    Text("Empirical Formula of Hydrocarbon:")
                        .fontWeight(.semibold)
                    
                    Text(getEmpire(wat: h2o, carb: co2))
                        .padding(.bottom, 25.0)
                }
                
                Group {
                    Text("Enter Molar Mass of Hydrocarbon to get Molecular Formula:")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    
                    TextField("Molar Mass (Ex. 30.07)",text: $molmass)
                        .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                }
                
                Group {
                    Text("Molecular Formula of Hydrocarbon:")
                        .fontWeight(.semibold)
                    
                    Text("bruh")
                }
                
                
                Spacer()
                
            }
            .padding(.top, 55.0)
            
            
        }
        
    }
}

func getEmpire(wat: String, carb: String) -> String {
    
    var mh2o = ((Float(wat) ?? 0.0)/18) * 2.0
    var mco2 = ((Float(carb) ?? 0.0)/44)
    var xy = Double(mco2/mh2o)
    var yx = Double(mh2o/mh2o)
    
    if(wat == "" || carb == "") {
        return "None"
    }
    
    if(floor(xy) != xy || floor(yx) != yx) {
        xy = xy*2
        yx = yx*2
    }
    
    xy = xy.rounded(.towardZero)
    
    yx = yx.rounded(.towardZero)
    
    return "C" + String(xy) + "H" + String(yx)
}






struct CHCombustView_Previews: PreviewProvider {
    static var previews: some View {
        CHCombustView()
    }
}
