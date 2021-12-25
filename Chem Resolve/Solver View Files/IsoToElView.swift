//
//  IsoToElView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 12/15/21.
//

import SwiftUI

struct IsoToElView: View {
    
    private let elementnamelist: [String] = ["0" ,"H", "He", "Li", "Be", "B", "C", "N", "O", "F", "Ne", "Na", "Mg", "Al", "Si", "P", "S", "Cl", "Ar", "K", "Ca", "Sc", "Ti", "V", "Cr", "Mn", "Fe", "Co", "Ni", "Cu", "Zn", "Ga", "Ge", "As", "Se", "Br", "Kr", "Rb", "Sr", "Y", "Zr", "Nb", "Mb", "Tc", "Ru", "Rh", "Pd", "Ag", "Cd", "In", "Sn", "Sb", "Te", "I", "Xe", "Cs", "Ba", "La", "Ce", "Pr", "Nd", "Pm", "Sm", "Eu", "Gd", "Tb", "Dy", "Ho", "Er", "Tm", "Yb", "Lu", "Hf", "Ta", "W", "Re", "Os", "Ir", "Pt", "Au", "Hg", "Tl", "Pb", "Bi", "Po", "At", "Rn", "Fr", "Ra", "Ac", "Th", "Pa", "U", "Np", "Pu", "Am", "Cm", "Bk", "Cf", "Es", "Fm", "Md", "No", "Lr"]


    private let longelementnamelist: [String] = ["Rf", "Db", "Sg", "Bh", "Hs", "Mt", "Ds", "Rg", "Cn", "Nh", "Fl", "Mc", "Lv", "Ts", "Og"]
    
    private let weightlist: [String] = ["0" ,"1", "4", "7", "9", "11", "12", "14", "16", "19", "20", "23", "24", "27", "28", "31", "32", "35", "40", "39", "40", "45", "48", "51", "52", "55", "56", "59", "58", "63", "65", "70", "73", "75", "79", "80", "84", "85", "88", "89", "91", "93", "96", "98", "101", "104", "106", "108", "112", "115", "119", "122", "128", "127", "131", "133", "137", "139", "140", "141", "144", "145", "150", "152", "157", "159", "163", "165", "167", "169", "173", "175", "178", "181", "184", "186", "190", "192", "195", "197", "201", "204", "207", "209", "210", "210", "222", "223", "226", "227", "232", "231", "238", "237", "244", "243", "247", "247", "251", "252", "257", "258", "259", "262"]
    
    
    private let longweightlist: [String] = ["261", "262", "266", "264", "267", "268", "271", "272", "285", "284", "289", "288", "292", "294", "294"]
    
    
    @State private var iso1: String = ""
    @State private var iso2: String = ""
    @State private var iso3: String = ""
    
    @State private var isop1: String = ""
    @State private var isop2: String = ""
    @State private var isop3: String = ""
    
    @State private var goramu: Bool = false
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            
            VStack {
                
                Text("Isotope to Element").font(.title).fontWeight(.bold).padding(.top, -10.0)

                
                GroupBox {
                    
                    Text("Enter the variables that you know:")
                        .fontWeight(.black)
                        .padding(.bottom, 5.0)
                    
                    Group {
                        Text("Mass in grams or amu's:")
                            .fontWeight(.semibold)
                            .padding(.bottom, -5.0)
                        Toggle(isOn: $goramu) {
                            Text(getWhich(one: goramu))
                        }
                        .padding(/*@START_MENU_TOKEN@*/.horizontal, 50.0/*@END_MENU_TOKEN@*/)
                        .frame(width: 300.0, height: 50.0)
                    }
                    
                }
                
                
                GroupBox {
                    
                    Group {
                        Text("Enter Isotope Weight and Percent 1:")
                            .fontWeight(.semibold)
                            .padding(.bottom, -8.0)
                        
                        TextField(getWText(one: goramu),text: $iso1)
                            .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                        
                        Spacer()
                            .frame(width: 40.0, height: -40.0)
                        TextField("Isotope Percentage (Ex. 78)",text: $isop1)
                            .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                    }
                    
                    Group {
                        Text("Enter Isotope Weight and Percent 2:")
                            .fontWeight(.semibold)
                            .padding(.bottom, -8.0)
                        
                        TextField(getWText(one: goramu),text: $iso2)
                            .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                        
                        Spacer()
                            .frame(width: 40.0, height: -40.0)
                        
                        TextField("Isotope Percentage (Ex. 10)",text: $isop2)
                            .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                    }
                    
                    Group {
                        Text("Enter Isotope Weight and Percent 3:")
                            .fontWeight(.semibold)
                            .padding(.bottom, -8.0)
                            
                        
                        TextField(getWText(one: goramu),text: $iso3)
                            .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                        
                        Spacer()
                            .frame(width: 40.0, height: -40.0)
                        
                        TextField("Isotope Percentage (Ex. 12)",text: $isop3)
                            .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                    }
                    
                    Group {
                        Text("Element Determined from Isotopes:")
                            .fontWeight(.semibold)
                        
                        Text(getFromIsotope(i1:iso1, i1p:isop1, i2: iso2, i2p:isop2, i3:iso3, i3p: isop3, ga: goramu, wlist: weightlist, lwlist: longweightlist, Nlist: elementnamelist, LNlist: longelementnamelist))
                    }
                    
                }
                
                
                Spacer()
                
            }
            
        }
        .padding(.horizontal)
        
    }
}


func getWhich(one: Bool) -> String {
    if(one) {
        return "Mass in amu's"
    }
    else {
        return "Mass in grams"
    }
}


func getWText(one: Bool) -> String {
    if(one) {
        return "Isotope Mass (Ex. 15)"
    }
    else {
        return "Isotope Mass (Ex. 4.1e-23)"
    }
}


func getFromIsotope(i1: String, i1p: String, i2: String, i2p: String, i3: String, i3p: String, ga: Bool, wlist: [String], lwlist: [String], Nlist: [String], LNlist: [String]) -> String {
    
    let mass1 = Double(i1)
    let mass2 = Double(i2)
    let mass3 = Double(i3)
    var mass = 0.0
    var stof = 0.0
    var elementofiso = ""
    var indexel = 0
    var intstof = 0
    
    
    if(i1 == "" || i1p == "" || i2 == "" || i2p == "" || i3 == "" || i3p == ""){
        return "None"
    }
    
    
    if(ga) {
        
        mass += (mass1 ?? 1) * (((Double(i1p) ?? 1.0)*100) / 10000.0)
        mass += (mass2 ?? 1) * (((Double(i2p) ?? 1.0)*100) / 10000.0)
        mass += (mass3 ?? 1) * (((Double(i3p) ?? 1.0)*100) / 10000.0)
        
        stof = mass
    }
    else {
        
        mass += (mass1 ?? 1) * (((Double(i1p) ?? 1.0)*100) / 10000.0)
        mass += (mass2 ?? 1) * (((Double(i2p) ?? 1.0)*100) / 10000.0)
        mass += (mass3 ?? 1) * (((Double(i3p) ?? 1.0)*100) / 10000.0)
        
        stof = mass * 6.022e23
        
    }
    
    intstof = Int(stof.rounded(.toNearestOrAwayFromZero))
    
    if(wlist.contains(String(intstof))) {
        for i in wlist {
            if(intstof == Int(i)) {
                
                indexel = (wlist.firstIndex(of: i) ?? 0)
                
            }
        }
        
        elementofiso = Nlist[indexel]
        
    }
    else if(lwlist.contains(String(intstof))) {
        for j in lwlist {
            if(intstof == Int(j)) {
                
                indexel = (lwlist.firstIndex(of: j) ?? 0)
                
            }
        }
        
        elementofiso = LNlist[indexel]

        
    }
    
    
    return String(elementofiso)
}


struct IsoToElView_Previews: PreviewProvider {
    static var previews: some View {
        IsoToElView()
    }
}
