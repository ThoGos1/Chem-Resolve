//
//  AdvCHOCombustView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 12/18/21.
//

import SwiftUI

struct AdvCHOCombustView: View {
    
    @State private var co2g: String = ""
    @State private var h2og: String = ""
    @State private var og: String = ""
    @State private var molmass: String = ""
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            
            VStack {
                
                Text("CxHyOz Combustion").font(.title).fontWeight(.bold).padding(.top, -10.0)

                
                Text("Enter the variables that you know:")
                    .fontWeight(.black)
                    .padding(.vertical)
                
                
                GroupBox {
                    
                    Group {
                        Text("Enter Grams of CO2 produced:")
                            .fontWeight(.semibold)
                        
                        TextField("CO2 (Ex. 8.272)",text: $co2g)
                            .frame(width: 300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0)
                            .multilineTextAlignment(.center)
                            .font(.title2)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                    }
                    
                    Group {
                        Text("Enter Grams of H2O produced:")
                            .fontWeight(.semibold)
                        
                        TextField("H2O (Ex. 4.515)",text: $h2og)
                            .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                    }
                    
                    
                    Group {
                        Text("Enter Grams of the Hydrocarbon:")
                            .fontWeight(.semibold)
                        
                        TextField("Oxygen (Ex. 3.765)",text: $og)
                            .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                    }
                    
                    
                    Group {
                        Text("Empirical Formula of Hydrocarbon:")
                            .fontWeight(.semibold)
                        
                        Text(getEfromCHnO(co2m:co2g, h2om: h2og, om: og))
                            .padding(.bottom, 20.0)
                    }
                    
                }
                
                
                GroupBox {
                    Group {
                        Text("Enter Molar Mass of Hydrocarbon:")
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                        
                        TextField("Molar Mass (Ex. 300.47)",text: $molmass)
                            .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                    }
                    
                    Group {
                        Text("Molecular Formula of Hydrocarbon:")
                            .fontWeight(.semibold)
                        
                        Text(getMFfromCHnO(co2m: co2g, h2om: h2og, om: og, mfac: molmass))
                    }
                    
                }
                Spacer()
            }
        }
        .padding(.horizontal)
    }
}


func getEfromCHnO(co2m: String, h2om: String, om: String) -> String {
    
    let carbm = (Double(co2m) ?? 1)/44*12
    let hydrom = (Double(h2om) ?? 1)/18*2
    let oxym = (Double(om) ?? 1) - carbm - hydrom
    
    let carbmol = carbm/12
    let hydromol = hydrom/1
    let oxymol = oxym/16
    
    let molarr = [carbmol, hydromol, oxymol]
    
    var factor = 1.0
    
    var intc = 0
    var inth = 0
    var into = 0
    
    var cc = 0.0
    var hc = 0.0
    var oc = 0.0
    
    
    if(co2m == "" || h2om == "" || om == "") {
        return "None"
    }
    
    
    if(molarr.min() == Optional(carbmol)){
        
        cc = 1.0
        
        if(carbmol==hydromol) {
            hc = 1.0
        }
        else if(!(carbmol==hydromol)) {
            
            hc = hydromol/carbmol
            
        }
        
        if(carbmol==oxymol) {
            oc = 1.0
        }
        else if(!(carbmol==oxymol)) {
            
            oc = oxymol/carbmol
            
        }
        
    }
    
    if(molarr.min() == Optional(hydromol)){
        
        hc = 1.0
        
        if(hydromol==carbmol) {
            cc = 1.0
        }
        else if(!(hydromol==carbmol)) {
            
            cc = carbmol/hydromol
            
        }
        
        
        if(hydromol==oxymol) {
            oc = 1.0
        }
        else if(!(hydromol==oxymol)) {
            
            oc = oxymol/hydromol
            
        }
        
    }
    
    if(molarr.min() == Optional(oxymol)){
        
        oc = 1.0
        
        if(oxymol==hydromol) {
            hc = 1.0
        }
        else if(!(oxymol==hydromol)) {
            
            hc = hydromol/oxymol
            
        }
        
        
        
        if(oxymol==carbmol) {
            cc = 1.0
        }
        else if(!(oxymol==carbmol)) {
            
            cc = carbmol/oxymol
            
        }
        
        
    }
    
    
    if(cc != 1.0) {
        
        if((Int(Double(cc) * 10) - (Int(cc) * 100)) == 25){
            factor = 4.0
        }
        
        if((Int(Double(cc) * 10) - (Int(cc) * 10)) == 3){
            factor = 3.0
        }
        
        if((Int(Double(cc) * 10) - (Int(cc) * 10)) == 6){
            factor = 3.0
        }
        
        if((Int(Double(cc) * 10) - (Int(cc) * 10)) == 2){
            factor = 5.0
        }
        
        if((Int(Double(cc) * 10) - (Int(cc) * 10)) == 5){
            factor = 2.0
        }
        
        if((Int(Double(cc) * 10) - (Int(cc) * 10)) == 4){
            factor = 5.0
        }
        
        if((Int(Double(cc) * 10) - (Int(cc) * 10)) == 8){
            factor = 5.0
        }
        
    }
    
    if(hc != 1.0) {
        
        if((Int(Double(hc) * 10) - (Int(hc) * 100)) == 25){
            factor = 4.0
        }
        
        if((Int(Double(hc) * 10) - (Int(hc) * 10)) == 3){
            factor = 3.0
        }
        
        if((Int(Double(hc) * 10) - (Int(hc) * 10)) == 6){
            factor = 3.0
        }
        
        if((Int(Double(hc) * 10) - (Int(hc) * 10)) == 2){
            factor = 5.0
        }
        
        if((Int(Double(hc) * 10) - (Int(hc) * 10)) == 5){
            factor = 2.0
        }
        
        if((Int(Double(hc) * 10) - (Int(hc) * 10)) == 4){
            factor = 5.0
        }
        
        if((Int(Double(hc) * 10) - (Int(hc) * 10)) == 8){
            factor = 5.0
        }
        
    }
    
    if(oc != 1.0) {
        
        if((Int(Double(oc) * 10) - (Int(oc) * 100)) == 25){
            factor = 4.0
        }
        
        if((Int(Double(oc) * 10) - (Int(oc) * 10)) == 3){
            factor = 3.0
        }
        
        if((Int(Double(oc) * 10) - (Int(oc) * 10)) == 6){
            factor = 3.0
        }
        
        if((Int(Double(oc) * 10) - (Int(oc) * 10)) == 2){
            factor = 5.0
        }
        
        if((Int(Double(oc) * 10) - (Int(oc) * 10)) == 5){
            factor = 2.0
        }
        
        if((Int(Double(oc) * 10) - (Int(oc) * 10)) == 4){
            factor = 5.0
        }
        
        if((Int(Double(oc) * 10) - (Int(oc) * 10)) == 8){
            factor = 5.0
        }
        
    }
    
    if(floor(hc) != hc || floor(cc) != cc || floor(oc) != oc) {
        hc = hc*factor
        cc = cc*factor
        oc = oc*factor
    }
        
    intc = Int(cc.rounded(.toNearestOrAwayFromZero))
    
    inth = Int(hc.rounded(.toNearestOrAwayFromZero))
    
    into = Int(oc.rounded(.toNearestOrAwayFromZero))
    
    
    return "C" + String(intc) + "H" + String(inth) + "O" + String(into)
}


func getMFfromCHnO(co2m: String, h2om: String, om: String, mfac: String) -> String {
    
    let carbm = (Double(co2m) ?? 1)/44*12
    let hydrom = (Double(h2om) ?? 1)/18*2
    let oxym = (Double(om) ?? 1) - carbm - hydrom
    
    let carbmol = carbm/12
    let hydromol = hydrom/1
    let oxymol = oxym/16
    
    let molarr = [carbmol, hydromol, oxymol]
    
    var factor = 1.0
    
    var intc = 0
    var inth = 0
    var into = 0
    
    var cc = 0.0
    var hc = 0.0
    var oc = 0.0
    
    let muchstuff = Int(Double(mfac) ?? 1.0)
    var factor2 = 1
    
    
    if(mfac == "") {
        return "None"
    }
    
    
    if(molarr.min() == Optional(carbmol)){
        
        cc = 1.0
        
        if(carbmol==hydromol) {
            hc = 1.0
        }
        else if(!(carbmol==hydromol)) {
            
            hc = hydromol/carbmol
            
        }
        
        if(carbmol==oxymol) {
            oc = 1.0
        }
        else if(!(carbmol==oxymol)) {
            
            oc = oxymol/carbmol
            
        }
        
    }
    
    if(molarr.min() == Optional(hydromol)){
        
        hc = 1.0
        
        if(hydromol==carbmol) {
            cc = 1.0
        }
        else if(!(hydromol==carbmol)) {
            
            cc = carbmol/hydromol
            
        }
        
        
        if(hydromol==oxymol) {
            oc = 1.0
        }
        else if(!(hydromol==oxymol)) {
            
            oc = oxymol/hydromol
            
        }
        
    }
    
    if(molarr.min() == Optional(oxymol)){
        
        oc = 1.0
        
        if(oxymol==hydromol) {
            hc = 1.0
        }
        else if(!(oxymol==hydromol)) {
            
            hc = hydromol/oxymol
            
        }
        
        
        
        if(oxymol==carbmol) {
            cc = 1.0
        }
        else if(!(oxymol==carbmol)) {
            
            cc = carbmol/oxymol
            
        }
        
        
    }
    
    
    if(cc != 1.0) {
        
        if((Int(Double(cc) * 10) - (Int(cc) * 100)) == 25){
            factor = 4.0
        }
        
        if((Int(Double(cc) * 10) - (Int(cc) * 10)) == 3){
            factor = 3.0
        }
        
        if((Int(Double(cc) * 10) - (Int(cc) * 10)) == 6){
            factor = 3.0
        }
        
        if((Int(Double(cc) * 10) - (Int(cc) * 10)) == 2){
            factor = 5.0
        }
        
        if((Int(Double(cc) * 10) - (Int(cc) * 10)) == 5){
            factor = 2.0
        }
        
        if((Int(Double(cc) * 10) - (Int(cc) * 10)) == 4){
            factor = 5.0
        }
        
        if((Int(Double(cc) * 10) - (Int(cc) * 10)) == 8){
            factor = 5.0
        }
        
    }
    
    if(hc != 1.0) {
        
        if((Int(Double(hc) * 10) - (Int(hc) * 100)) == 25){
            factor = 4.0
        }
        
        if((Int(Double(hc) * 10) - (Int(hc) * 10)) == 3){
            factor = 3.0
        }
        
        if((Int(Double(hc) * 10) - (Int(hc) * 10)) == 6){
            factor = 3.0
        }
        
        if((Int(Double(hc) * 10) - (Int(hc) * 10)) == 2){
            factor = 5.0
        }
        
        if((Int(Double(hc) * 10) - (Int(hc) * 10)) == 5){
            factor = 2.0
        }
        
        if((Int(Double(hc) * 10) - (Int(hc) * 10)) == 4){
            factor = 5.0
        }
        
        if((Int(Double(hc) * 10) - (Int(hc) * 10)) == 8){
            factor = 5.0
        }
        
    }
    
    if(oc != 1.0) {
        
        if((Int(Double(oc) * 10) - (Int(oc) * 100)) == 25){
            factor = 4.0
        }
        
        if((Int(Double(oc) * 10) - (Int(oc) * 10)) == 3){
            factor = 3.0
        }
        
        if((Int(Double(oc) * 10) - (Int(oc) * 10)) == 6){
            factor = 3.0
        }
        
        if((Int(Double(oc) * 10) - (Int(oc) * 10)) == 2){
            factor = 5.0
        }
        
        if((Int(Double(oc) * 10) - (Int(oc) * 10)) == 5){
            factor = 2.0
        }
        
        if((Int(Double(oc) * 10) - (Int(oc) * 10)) == 4){
            factor = 5.0
        }
        
        if((Int(Double(oc) * 10) - (Int(oc) * 10)) == 8){
            factor = 5.0
        }
        
    }
    
    if(floor(hc) != hc || floor(cc) != cc || floor(oc) != oc) {
        hc = hc*factor
        cc = cc*factor
        oc = oc*factor
    }
        
    intc = Int(cc.rounded(.toNearestOrAwayFromZero))
    
    inth = Int(hc.rounded(.toNearestOrAwayFromZero))
    
    into = Int(oc.rounded(.toNearestOrAwayFromZero))
    
    
    factor2 = muchstuff/(intc*12 + inth + into*16)

    intc = intc*factor2
    inth = inth*factor2
    into = into*factor2
    
    
    return "C" + String(intc) + "H" + String(inth) + "O" + String(into)
}





struct AdvCHOCombustView_Previews: PreviewProvider {
    static var previews: some View {
        AdvCHOCombustView()
    }
}
