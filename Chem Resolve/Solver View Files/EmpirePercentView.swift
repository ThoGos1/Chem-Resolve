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
        
        ScrollView(showsIndicators: false) {
            
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
                        
                        TextField("Oxygen (Ex. 54.5)",text: $op)
                            .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                    }
                    
                    
                    Group {
                        Text("Empirical Formula of Hydrocarbon:")
                            .fontWeight(.semibold)
                        
                        Text(getEfromP(cper: cp, hper: hp, oper: op))
                            .padding(.bottom, 20.0)
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
                        
                        Text(getEfromM(cper: cp, hper: hp, oper: op, mfac: molmass))
                    }
                    
                }
                
                Spacer()
                
            }
            
        }
        .padding(.horizontal)
        
        
    }
}


func getEfromP(cper: String, hper: String, oper: String) -> String {
    
    let cmol = ((Double(cper) ?? 1000) / 12)
    let hmol = ((Double(hper) ?? 1000) / 1)
    let omol = ((Double(oper) ?? 1000) / 16)
    var factor = 1.0
    var cc = 0.0
    var hc = 0.0
    var oc = 0.0
    let molarr = [cmol, hmol, omol]
    var hasnto = true
    var intc = 0
    var inth = 0
    var into = 0
    
    
    
    if(oper=="") {
        hasnto = true
    }
    else {
        hasnto = false
    }
    
    
    if(cper == "" || hper == "") {
        return "None"
    }
    
    
    if(molarr.min() == Optional(cmol)){
        
        cc = 1.0
        
        if(cmol==hmol) {
            hc = 1.0
        }
        else if(!(cmol==hmol)) {
            
            hc = hmol/cmol
            
        }
        
        if(cmol==omol) {
            oc = 1.0
        }
        else if(!(cmol==omol)) {
            
            oc = omol/cmol
            
        }
        
    }
    
    if(molarr.min() == Optional(hmol)){
        
        hc = 1.0
        
        if(hmol==cmol) {
            cc = 1.0
        }
        else if(!(hmol==cmol)) {
            
            cc = cmol/hmol
            
        }
        
        
        if(hmol==omol) {
            oc = 1.0
        }
        else if(!(hmol==omol)) {
            
            oc = omol/hmol
            
        }
        
    }
    
    if(!false && molarr.min() == Optional(omol)){
        
        oc = 1.0
        
        if(omol==hmol) {
            hc = 1.0
        }
        else if(!(omol==hmol)) {
            
            hc = hmol/omol
            
        }
        
        
        
        if(omol==cmol) {
            cc = 1.0
        }
        else if(!(omol==cmol)) {
            
            cc = cmol/omol
            
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
    
    if(hasnto && oc != 1.0) {
        
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
    
    
    if(oper != "") {
        
        return "C" + String(intc) + "H" + String(inth) + "O" + String(into)
        
    }
    
    if(oper == "") {
        
        return "C" + String(intc) + "H" + String(inth)
        
    }
    
    return "None"

}



func getEfromM(cper: String, hper: String, oper: String, mfac: String) -> String {
    
    let cmol = ((Double(cper) ?? 1000) / 12)
    let hmol = ((Double(hper) ?? 1000) / 1)
    let omol = ((Double(oper) ?? 1000) / 16)
    var factor = 1.0
    var cc = 0.0
    var hc = 0.0
    var oc = 0.0
    let molarr = [cmol, hmol, omol]
    var hasnto = true
    var intc = 0
    var inth = 0
    var into = 0
    let muchstuff = Int(Double(mfac) ?? 1.0)
    var factor2 = 1
    
    if(oper=="") {
        hasnto = true
    }
    else {
        hasnto = false
    }
    
    
    if(mfac == "") {
        return "None"
    }
    
    
    if(molarr.min() == Optional(cmol)){
        
        cc = 1.0
        
        if(cmol==hmol) {
            hc = 1.0
        }
        else if(!(cmol==hmol)) {
            
            hc = hmol/cmol
            
        }
        
        if(cmol==omol) {
            oc = 1.0
        }
        else if(!(cmol==omol)) {
            
            oc = omol/cmol
            
        }
        
    }
    
    if(molarr.min() == Optional(hmol)){
        
        hc = 1.0
        
        if(hmol==cmol) {
            cc = 1.0
        }
        else if(!(hmol==cmol)) {
            
            cc = cmol/hmol
            
        }
        
        
        if(hmol==omol) {
            oc = 1.0
        }
        else if(!(hmol==omol)) {
            
            oc = omol/hmol
            
        }
        
    }
    
    if(molarr.min() == Optional(omol)){
        
        oc = 1.0
        
        if(omol==hmol) {
            hc = 1.0
        }
        else if(!(omol==hmol)) {
            
            hc = hmol/omol
            
        }
        
        
        
        if(omol==cmol) {
            cc = 1.0
        }
        else if(!(omol==cmol)) {
            
            cc = cmol/omol
            
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
    
    if(hasnto && oc != 1.0) {
        
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
    
    
    if(hasnto) {
        
        factor2 = muchstuff/(intc*12 + inth)
        
    }
    else {
        
        factor2 = muchstuff/(intc*12 + inth + into*16)
        
    }
    
    intc = intc*factor2
    inth = inth*factor2
    into = into*factor2
    
    
    if(oper != "") {
        
        return "C" + String(intc) + "H" + String(inth) + "O" + String(into)
        
    }
    
    if(oper == "") {
        
        return "C" + String(intc) + "H" + String(inth)
        
    }
    
    return "None"

}





struct EmpirePercentView_Previews: PreviewProvider {
    static var previews: some View {
        EmpirePercentView()
    }
}
