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
            Text("CxHy Combustion Analysis:").font(.largeTitle).fontWeight(.bold).multilineTextAlignment(.center).padding(.bottom, 725)
            
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
                    
                    Text(getMolFor(wat: h2o, carb: co2, wfor: molmass))
                }
                
                
                Spacer()
                
            }
            .padding(.top, 55.0)
            
            
        }
        
    }
}

func getEmpire(wat: String, carb: String) -> String {
    
    let hmol = ((Double(wat) ?? 0.0)/18) * 2
    let cmol = ((Double(carb) ?? 0.0)/44)
    var xbig = 0.0
    var ysmall = 0.0
    var factor = 0.0
    var intx = 0
    var inty = 0
    var horc = false
    
    
    if(wat == "" || carb == "") {
        return "None"
    }
    
    if(cmol > hmol && hmol != 0) {
        xbig = cmol/hmol
        ysmall = 1.0
        horc = true
    }
    
    if(hmol > cmol && cmol != 0) {
        xbig = hmol/cmol
        ysmall = 1.0
        horc = false
    }
    
    
    if(floor(xbig) != xbig || floor(ysmall) != ysmall) {
        
        xbig = round(xbig*100) / 100.0
        ysmall = round(ysmall*100) / 100.0
        
    }
    
    
    
    if((Int(Double(xbig) * 10) - (Int(xbig) * 100)) == 25){
        factor = 4.0
    }
    
    if((Int(Double(xbig) * 10) - (Int(xbig) * 100)) == 33){
        factor = 3.0
    }
    
    if((Int(Double(xbig) * 10) - (Int(xbig) * 100)) == 66){
        factor = 3.0
    }
    
    if((Int(Double(xbig) * 10) - (Int(xbig) * 10)) == 2){
        factor = 5.0
    }
    
    if((Int(Double(xbig) * 10) - (Int(xbig) * 10)) == 5){
        factor = 2.0
    }
    
    if((Int(Double(xbig) * 10) - (Int(xbig) * 10)) == 4){
        factor = 5.0
    }
    
    if((Int(Double(xbig) * 10) - (Int(xbig) * 10)) == 8){
        factor = 5.0
    }
    
    
    
    if(floor(xbig) != xbig || floor(ysmall) != ysmall) {
        xbig = xbig*factor
        ysmall = ysmall*factor
    }

    
    intx = Int(xbig.rounded(.towardZero))
    
    inty = Int(ysmall.rounded(.towardZero))
    
    if(horc) {
        return "C" + String(intx) + "H" + String(inty)
    }
    else {
        return "C" + String(inty) + "H" + String(intx)
    }
    
}


func getMolFor(wat: String, carb: String, wfor: String) -> String {
    
    let hmol = ((Double(wat) ?? 0.0)/18) * 2
    let cmol = ((Double(carb) ?? 0.0)/44)
    var xbig = 0.0
    var ysmall = 0.0
    var factor = 0.0
    var factor2 = 1
    var intx = 0
    var inty = 0
    var horc = false
    let howmuch = Int(wfor) ?? 1
    
    
    if(wfor == "") {
        return "None"
    }
    
    if(cmol > hmol && hmol != 0) {
        xbig = cmol/hmol
        ysmall = 1.0
        horc = true
    }
    
    if(hmol > cmol && cmol != 0) {
        xbig = hmol/cmol
        ysmall = 1.0
        horc = false
    }
    
    
    if(floor(xbig) != xbig || floor(ysmall) != ysmall) {
        
        xbig = round(xbig*100) / 100.0
        ysmall = round(ysmall*100) / 100.0
        
    }
    
    
    
    if((Int(Double(xbig) * 10) - (Int(xbig) * 100)) == 25){
        factor = 4.0
    }
    
    if((Int(Double(xbig) * 10) - (Int(xbig) * 100)) == 33){
        factor = 3.0
    }
    
    if((Int(Double(xbig) * 10) - (Int(xbig) * 100)) == 66){
        factor = 3.0
    }
    
    if((Int(Double(xbig) * 10) - (Int(xbig) * 10)) == 2){
        factor = 5.0
    }
    
    if((Int(Double(xbig) * 10) - (Int(xbig) * 10)) == 5){
        factor = 2.0
    }
    
    if((Int(Double(xbig) * 10) - (Int(xbig) * 10)) == 4){
        factor = 5.0
    }
    
    if((Int(Double(xbig) * 10) - (Int(xbig) * 10)) == 8){
        factor = 5.0
    }
    
    
    
    if(floor(xbig) != xbig || floor(ysmall) != ysmall) {
        xbig = xbig*factor
        ysmall = ysmall*factor
    }

    
    intx = Int(xbig.rounded(.towardZero))
    
    inty = Int(ysmall.rounded(.towardZero))
    
    
    if(horc && intx != 0) {
        factor2 = howmuch/(intx*12 + inty)
    }
    else if(!horc && intx != 0) {
        factor2 = howmuch/(inty*12 + intx)
    }

    
    intx = intx*factor2
    
    inty = inty*factor2
    
    if(horc) {
        return "C" + String(intx) + "H" + String(inty)
    }
    else {
        return "C" + String(inty) + "H" + String(intx)
    }
    
}




struct CHCombustView_Previews: PreviewProvider {
    static var previews: some View {
        CHCombustView()
    }
}
