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
    
    private let weightlist: [String] = ["0" ,"1.007", "4.002", "6.941", "9.012", "10.811", "12.011", "14.007", "15.999", "18.998", "20.18", "22.99", "24.305", "26.982", "28.086", "30.974", "32.065", "35.453", "39.948", "39.098", "40.078", "44.956", "47.867", "50.942", "51.996", "54.938", "55.845", "58.933", "58.693", "63.546", "65.38", "69.723", "72.64", "74.922", "78.96", "79.904", "83.798", "85.468", "87.62", "88.906", "91.224", "92.906", "95.96", "98", "101.07", "102.906", "106.42", "107.868", "112.411", "114.818", "118.71", "121.76", "127.6", "126.904", "131.293", "132.905", "137.327", "138.905", "140.116", "140.9082", "144.242", "145", "150.36", "151.964", "157.25", "158.925", "162.5", "164.93", "167.259", "168.934", "173.054", "174.967", "178.49", "180.948", "183.84", "186.207", "190.23", "192.217", "195.084", "196.967", "200.59", "204.383", "207.2", "208.98", "210", "210", "222", "223", "226", "227", "232.038", "231.036", "238.029", "237", "244", "243", "247", "247", "251", "252", "257", "258", "259", "262"]
    
    
    private let longweightlist: [String] = ["261", "262", "266", "264", "267", "268", "271", "272", "285", "284", "289", "288", "292", "294", "294"]
    
    
    @State private var iso1: String = ""
    @State private var iso2: String = ""
    @State private var iso3: String = ""
    
    @State private var isop1: String = ""
    @State private var isop2: String = ""
    @State private var isop3: String = ""
    
    @State private var goramu: Bool = false
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                
                Text("Isotope to Formula").font(.title).fontWeight(.bold).padding(.top, -10.0)

                
                GroupBox {
                    
                    Text("Enter the varibles that you know:")
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
                        .frame(width: 315.0, height: 50.0)
                    }
                    
                }
                
                
                GroupBox {
                    
                    Group {
                        Text("Enter Isotope Weight and Percentage 1:")
                            .fontWeight(.semibold)
                            .padding(.bottom, -14.0)
                        
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
                        Text("Enter Isotope Weight and Percentage 2:")
                            .fontWeight(.semibold)
                            .padding(.bottom, -14.0)
                        
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
                        Text("Enter Isotope Weight and Percentage 3:")
                            .fontWeight(.semibold)
                            .padding(.bottom, -14.0)
                        
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
                        
                        Text(getFromIsotope(i1:iso1, i1p:isop1, i2: iso2, i2p:isop2, i3:iso3, i3p: isop3, ga: goramu))
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
        return "Isotope Mass (Ex. 4.1e-23)"
    }
    else {
        return "Isotope Mass (Ex. 15)"
    }
}


func getFromIsotope(i1: String, i1p: String, i2: String, i2p: String, i3: String, i3p: String, ga: Bool) -> String {
    
    var mass1 = Int(i1)
    var mass2 = Int(i2)
    var mass3 = Int(i3)
    var mass = 0
    
    
    if(i1 == "" || i1p == "" || i2 == "" || i2p == "" || i3 == "" || i3p == ""){
        return "None"
    }
    
    
    if(ga) {
        
        mass += (mass1 ?? 1)*Int((round((Double(i1p) ?? 1.0)*100) / 100.0))
        
        return String(mass)
        
    }
    else {
        
        
        return "hello"
        
    }
}


struct IsoToElView_Previews: PreviewProvider {
    static var previews: some View {
        IsoToElView()
    }
}
