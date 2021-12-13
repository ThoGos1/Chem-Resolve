//
//  BondCharView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/22/21.
//

import SwiftUI

private let elementnamelist: [String] = ["0" ,"H", "He", "Li", "Be", "B", "C", "N", "O", "F", "Ne", "Na", "Mg", "Al", "Si", "P", "S", "Cl", "Ar", "K", "Ca", "Sc", "Ti", "V", "Cr", "Mn", "Fe", "Co", "Ni", "Cu", "Zn", "Ga", "Ge", "As", "Se", "Br", "Kr", "Rb", "Sr", "Y", "Zr", "Nb", "Mb", "Tc", "Ru", "Rh", "Pd", "Ag", "Cd", "In", "Sn", "Sb", "Te", "I", "Xe", "Cs", "Ba", "La", "Ce", "Pr", "Nd", "Pm", "Sm", "Eu", "Gd", "Tb", "Dy", "Ho", "Er", "Tm", "Yb", "Lu", "Hf", "Ta", "W", "Re", "Os", "Ir", "Pt", "Au", "Hg", "Tl", "Pb", "Bi", "Po", "At", "Rn", "Fr", "Ra", "Ac", "Th", "Pa", "U", "Np", "Pu", "Am", "Cm", "Bk", "Cf", "Es", "Fm", "Md", "No", "Lr"]

private let negativelist: [String] = ["0", "2.20", "Undefined", "0.98", "1.57", "2.04", "2.55", "3.04", "3.44", "3.98", "Undefined", "0.93", "1.31", "1.61", "1.90", "2.19", "2.58", "3.16", "Undefined", "0.82", "1.00", "1.36", "1.54", "1.63", "1.66", "1.55", "1.83", "1.88", "1.91", "1.90", "1.65", "1.81", "2.01", "2.18", "2.55", "2.96", "3.00", "0.82", "0.95", "1.22", "1.33", "1.6", "2.16", "1.9", "2.2", "2.28", "2.20", "1.93", "1.69", "1.78", "1.96", "2.05", "2.1", "2.66", "2.6", "0.79", "0.89", "1.10", "1.12", "1.13", "1.14", "1.13", "1.17", "1.2", "1.2", "1.22", "1.23", "1.24", "1.24", "1.25", "1.1", "1.27", "1.3", "1.5", "2.36", "1.9", "2.2", "2.2", "2.28", "2.54", "2.00", "1.62", "2.33", "2.02", "2.0", "2.2", "Undefined", "0.7", "0.89", "1.1", "1.3", "1.5", "1.38", "1.36", "1.28", "1.3", "1.3", "1.3", "1.3", "1.3", "1.3", "1.3", "1.3", "Undefined"]

private let radiilist: [String] = ["0", "53", "31", "167", "112", "87", "67", "56", "48", "42", "38", "190", "145", "118", "111", "98", "88", "79", "71", "243", "194", "184", "176", "171", "166", "161", "156", "152", "149", "145", "142", "136", "125", "114", "103", "94", "88", "265", "219", "212", "206", "198", "190", "183", "178", "173", "169", "165", "161", "156", "145", "133", "123", "115", "108", "298", "253", "195", "185", "247", "206", "205", "238", "231", "233", "225", "228", "226", "226", "222", "222", "217", "208", "200", "193", "188", "185", "180", "177", "174", "171", "156", "154", "143", "135", "127", "120", "0", "0", "195", "180", "180", "175", "175", "175", "175"]


struct BondCharView: View {

    
    @State private var element: String = ""
    @State private var second: String = ""
    
    var body: some View {
        ZStack {
            Text("Bond Characteristics").font(.largeTitle).fontWeight(.bold).padding(.bottom, 725)
            
            VStack {
                
                Group {
                    Text("Enter bond here in X-Y format:")
                        .fontWeight(.black)
                        .padding(.top)
                    
                    TextField("Element (Ex. Na-Cl)",text: $element)
                        .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                }
                
                
                Group {
                    Text("Electronegativity Difference and Polarity:")
                        .fontWeight(.semibold)
                    Text(getDiff(el:element, Zlist: elementnamelist, Nlist: negativelist))
                        .padding(.bottom, 25.0)
                }
                
                Group {
                    Text("Longer or Shorter than:")
                        .fontWeight(.semibold)
                        .padding(.bottom, -15.0)
                    
                    TextField("Element (Ex. K-I)",text: $second)
                        .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                    
                    Text(longshort(el: element, el2: second, Zlist: elementnamelist, Nlist: radiilist))
                        .padding(.top, -10.0)
                }
                
                Spacer()
                
                
                
            }
            .padding(.top, 55.0)
            
            
        }
        
    }
}


func getDiff(el: String, Zlist: [String], Nlist: [String]) -> String {
    
    let line = el.firstIndex(of: "-")
    var Z:String
    var Za:String
    var Zfs:String
    var Zss:String
    var Zf:Float
    var Zs:Float
    var Zd:Float = 100.0
    var pole:String = ""
    
    if(line != nil) {
        Z = String(el.prefix(upTo: line!))
        Za = String(el[el.index(after: line!)...])
    }
    else {
        Z = "None"
        Za = "None"
    }
    
    if(Zlist.contains(String(Z)) && Zlist.contains(String(Za))){
        Zfs = Nlist[Zlist.firstIndex(of: Z) ?? 0]
        Zss = Nlist[Zlist.firstIndex(of: Za) ?? 0]
        Zf = Float(Zfs) ?? 0.0
        Zs = Float(Zss) ?? 0.0
        Zd = floor(1000*(Zf - Zs))/1000
        Zd = Zd.magnitude
    }
    
    if(Zd <= 0.5) {
        pole = "Non Polar"
    }
    else if(Zd > 0.5 && Zd <= 1.6) {
        pole = "Polar"
    }
    else if(Zd > 1.6 && Zd <= 2.0) {
        if(elseries(Z: Z, Nlist: elementnamelist, LZlist: negativelist) != "Metal" || elseries(Z: Za, Nlist: elementnamelist, LZlist: negativelist) == "Metal") {
            pole = "Ionic"
        }
        else {
            pole = "Polar"
        }
    }
    else if(Zd > 2.0 && Zd < 6.0) {
        pole = "Ionic"
    }
    else if Zd > 50 {
        return "None"
    }
    
    
    return "E-N Diff: " + String(Zd) + "            Polarity: " + pole
}


func longshort(el: String, el2: String, Zlist: [String], Nlist: [String]) -> String {
    
    let line = el.firstIndex(of: "-")
    let line2 = el2.firstIndex(of: "-")
    var Z:String
    var Za:String
    var Z2:String
    var Za2:String
    
    var Zfs:String
    var Zss:String
    var Zf:Float
    var Zs:Float
    
    var Zfs2:String
    var Zss2:String
    var Zf2:Float
    var Zs2:Float
    
    
    if(line != nil && line2 != nil) {
        Z = String(el.prefix(upTo: line!))
        Za = String(el[el.index(after: line!)...])
        
        Z2 = String(el2.prefix(upTo: line2!))
        Za2 = String(el2[el2.index(after: line2!)...])
    }
    else {
        Z = "None"
        Za = "None"
        Z2 = "None"
        Za2 = "None"
    }
    
    
    if(Zlist.contains(String(Z)) && Zlist.contains(String(Za)) && Zlist.contains(String(Z2)) && Zlist.contains(String(Za2))){
        Zfs = Nlist[Zlist.firstIndex(of: Z) ?? 0]
        Zss = Nlist[Zlist.firstIndex(of: Za) ?? 0]
        Zf = Float(Zfs) ?? 1000.0
        Zs = Float(Zss) ?? 1000.0
        
        Zfs2 = Nlist[Zlist.firstIndex(of: Z2) ?? 0]
        Zss2 = Nlist[Zlist.firstIndex(of: Za2) ?? 0]
        Zf2 = Float(Zfs2) ?? 1000.0
        Zs2 = Float(Zss2) ?? 1000.0
        
        if((Zf + Zs) == (Zf2 + Zs2)) {
            return "The same"
        }
        else if((Zf + Zs) < (Zf2 + Zs2)) {
            return "Shorter / Stronger"
        }
        else {
            return "Longer / Weaker"
        }
        
    }
    else {
        return "None"
    }
}


struct BondCharView_Previews: PreviewProvider {
    static var previews: some View {
        BondCharView()
    }
}
