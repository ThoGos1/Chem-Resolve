//
//  ElementInfoView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/10/21.
//

import SwiftUI

struct ElementInfoView: View {
    
    private let elementnamelist: [String] = ["0" ,"H", "He", "Li", "Be", "B", "C", "N", "O", "F", "Ne", "Na", "Mg", "Al", "Si", "P", "S", "Cl", "Ar", "K", "Ca", "Sc", "Ti", "V", "Cr", "Mn", "Fe", "Co", "Ni", "Cu", "Zn", "Ga", "Ge", "As", "Se", "Br", "Kr", "Rb", "Sr", "Y", "Zr", "Nb", "Mb", "Tc", "Ru", "Rh", "Pd", "Ag", "Cd", "In", "Sn", "Sb", "Te", "I", "Xe", "Cs", "Ba", "La", "Ce", "Pr", "Nd", "Pm", "Sm", "Eu", "Gd", "Tb", "Dy", "Ho", "Er", "Tm", "Yb", "Lu", "Hf", "Ta", "W", "Re", "Os", "Ir", "Pt", "Au", "Hg", "Tl", "Pb", "Bi", "Po", "At", "Rn", "Fr", "Ra", "Ac", "Th", "Pa", "U", "Np", "Pu", "Am", "Cm", "Bk", "Cf", "Es", "Fm", "Md", "No", "Lr"]


    private let longelementnamelist: [String] = ["Rf", "Db", "Sg", "Bh", "Hs", "Mt", "Ds", "Rg", "Cn", "Nh", "Fl", "Mc", "Lv", "Ts", "Og"]


    private let negativelist: [String] = ["0", "2.20", "Undefined", "0.98", "1.57", "2.04", "2.55", "3.04", "3.44", "3.98", "Undefined", "0.93", "1.31", "1.61", "1.90", "2.19", "2.58", "3.16", "Undefined", "0.82", "1.00", "1.36", "1.54", "1.63", "1.66", "1.55", "1.83", "1.88", "1.91", "1.90", "1.65", "1.81", "2.01", "2.18", "2.55", "2.96", "3.00", "0.82", "0.95", "1.22", "1.33", "1.6", "2.16", "1.9", "2.2", "2.28", "2.20", "1.93", "1.69", "1.78", "1.96", "2.05", "2.1", "2.66", "2.6", "0.79", "0.89", "1.10", "1.12", "1.13", "1.14", "1.13", "1.17", "1.2", "1.2", "1.22", "1.23", "1.24", "1.24", "1.25", "1.1", "1.27", "1.3", "1.5", "2.36", "1.9", "2.2", "2.2", "2.28", "2.54", "2.00", "1.62", "2.33", "2.02", "2.0", "2.2", "Undefined", "0.7", "0.89", "1.1", "1.3", "1.5", "1.38", "1.36", "1.28", "1.3", "1.3", "1.3", "1.3", "1.3", "1.3", "1.3", "1.3", "Undefined"]

    private let longnegativelist: [String] = ["Undefined", "Undefined", "Undefined", "Undefined", "Undefined", "Undefined", "Undefined", "Undefined", "Undefined", "Undefined", "Undefined", "Undefined", "Undefined", "Undefined", "Undefined"]

    
    private let weightlist: [String] = ["0" ,"1.007", "4.002", "6.941", "9.012", "10.811", "12.011", "14.007", "15.999", "18.998", "20.18", "22.99", "24.305", "26.982", "28.086", "30.974", "32.065", "35.453", "39.948", "39.098", "40.078", "44.956", "47.867", "50.942", "51.996", "54.938", "55.845", "58.933", "58.693", "63.546", "65.38", "69.723", "72.64", "74.922", "78.96", "79.904", "83.798", "85.468", "87.62", "88.906", "91.224", "92.906", "95.96", "98", "101.07", "102.906", "106.42", "107.868", "112.411", "114.818", "118.71", "121.76", "127.6", "126.904", "131.293", "132.905", "137.327", "138.905", "140.116", "140.9082", "144.242", "145", "150.36", "151.964", "157.25", "158.925", "162.5", "164.93", "167.259", "168.934", "173.054", "174.967", "178.49", "180.948", "183.84", "186.207", "190.23", "192.217", "195.084", "196.967", "200.59", "204.383", "207.2", "208.98", "210", "210", "222", "223", "226", "227", "232.038", "231.036", "238.029", "237", "244", "243", "247", "247", "251", "252", "257", "258", "259", "262"]
    
    
    private let longweightlist: [String] = ["261", "262", "266", "264", "267", "268", "271", "272", "285", "284", "289", "288", "292", "294", "294"]
    
    
    @State private var element: String = ""
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                
                Text("Element Info").font(.title).fontWeight(.bold).padding(.top, -10.0)

                
                GroupBox {
                    Text("Type in element here:")
                        .fontWeight(.black)
                    
                    TextField("Element (Ex. Mg)",text: $element)
                        .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                }
                
                
                
                GroupBox {
                    
                    Group {
                        Text("Atomic Number:")
                            .fontWeight(.semibold)
                        Text(getAnum(Z: element, Zlist: elementnamelist, Llist: longelementnamelist))
                            .padding(.bottom, 25.0)
                    }
                    
                    
                    Group {
                        Text("Chemical Element Series:")
                            .fontWeight(.semibold)
                        Text(elseries(Z: element, Nlist: elementnamelist, LZlist: longelementnamelist))
                            .padding(.bottom, 25.0)
                            .frame(width: 300.0, height: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/)
                    }
                    
                    
                    Group {
                        Text("Metal Status:")
                            .fontWeight(.semibold)
                        Text(getMetal(Z: element, Nlist: elementnamelist, LZlist: longelementnamelist))
                            .padding(.bottom, 25.0)
                    }
                    
                    
                    Group {
                        Text("Atomic Weight:")
                            .fontWeight(.semibold)
                        Text(getEinfo(Z: element, Zlist: elementnamelist, Nlist: weightlist, LNlist: longweightlist, LZlist: longelementnamelist))
                            .padding(.bottom, 25.0)
                    }
                    
                    
                    Group {
                        Text("Mass in kg:")
                            .fontWeight(.semibold)
                        Text(getRealMass(Z: element, Zlist: elementnamelist, Nlist: weightlist, LNlist: longweightlist, LZlist: longelementnamelist))
                            .padding(.bottom, 25.0)
                    }
                    
                    
                    Group {
                        Text("Electron Negativity:")
                            .fontWeight(.semibold)
                        Text(getEinfo(Z: element, Zlist: elementnamelist, Nlist: negativelist, LNlist: longnegativelist, LZlist: longelementnamelist))
                            .padding(.bottom, 25.0)
                    }
                    
                }
                
                
                
                
                Spacer()
            }
            
            
        }
        .padding(.horizontal)
        
    }
}


func elseries(Z: String, Nlist: [String], LZlist: [String]) -> String {
    
    let halgroup = [1, 9, 17, 35, 53, 85, 117]
    let alkgroup = [3, 11, 19, 37, 55, 87]
    let alkethgroup = [4, 12, 20, 38, 56, 88]
    
    let transgroup = [21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 72, 73, 74, 75, 76, 77, 78, 79, 80]
    
    let nobgroup = [2, 10, 18, 36, 54, 86, 118]
    let langroup = [57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71]
    let actgroup = [89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103]
    
//    let ltransgroup = [104, 105, 106, 107, 108, 109, 110, 111, 112]
    
    if Nlist.contains(Z) {
        for i in halgroup {
            if((Nlist.firstIndex(of: Z) == i)) {
                return "Halogen"
            }
        }
        
        for i in alkgroup {
            if((Nlist.firstIndex(of: Z) == i)) {
                return "Alkali Metal"
            }
        }
        
        for i in alkethgroup {
            if((Nlist.firstIndex(of: Z) == i)) {
                return "Alkaline Earth Metal"
            }
        }
        
        for i in nobgroup {
            if((Nlist.firstIndex(of: Z) == i)) {
                return "Noble Gas"
            }
        }
        
        for i in langroup {
            if((Nlist.firstIndex(of: Z) == i)) {
                return "Lanthanoids"
            }
        }
        
        for i in actgroup {
            if((Nlist.firstIndex(of: Z) == i)) {
                return "Actinoids"
            }
        }
        
        for i in transgroup {
            if((Nlist.firstIndex(of: Z) == i)) {
                return "Transition Metal"
            }
        }
        
    }
    
    if LZlist.contains(Z) {
        
        if LZlist.firstIndex(of: Z) == 14 {
            return "Noble Gas"
        }
        else {
            return "Transition Metal"
        }
    }
    return "None"
}


func getMetal(Z: String, Nlist: [String], LZlist: [String]) -> String {
    
    let nonmetal = [1, 2, 6, 7, 8, 9, 10, 15, 16, 17, 18, 34, 35, 36, 53, 54, 86]
    let metalloid = [5, 14, 32, 33, 51, 52, 85]
    
    if Z == "" || !(Nlist.contains(Z)) {
        return "Neither"
    }
    
    for i in nonmetal {
        if((Nlist.firstIndex(of: Z) == i)) {
            return "Non Metal"
        }
    }
    
    for i in metalloid {
        if((Nlist.firstIndex(of: Z) == i)) {
            return "Metalloid"
        }
        else {
            return "Metal"
        }
    }
    
    return "Neither"
}


func getRealMass(Z: String, Zlist: [String], Nlist: [String], LNlist: [String], LZlist: [String]) -> String {
    
    return String(((Double(getEinfo(Z: Z, Zlist: Zlist, Nlist: Nlist, LNlist: LNlist, LZlist: LZlist)) ?? 1)/6.022e26))
}




struct ElementInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ElementInfoView()
    }
}
