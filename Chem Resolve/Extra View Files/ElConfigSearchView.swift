//
//  ElConfigSearchView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/4/21.
//

import SwiftUI

struct ElConfigSearchView: View {
    
    private let elementlist: [String] = ["1s1", "1s2", "1s2 2s1", "1s2 2s2", "1s2 2s2 2p1", "1s2 2s2 2p2", "1s2 2s2 2p3", "1s2 2s2 2p4", "1s2 2s2 2p5", "1s2 2s2 2p6", "1s2 2s2 2p6 3s1", "1s2 2s2 2p6 3s2", "1s2 2s2 2p6 3s2 3p1", "1s2 2s2 2p6 3s2 3p2", "1s2 2s2 2p6 3s2 3p3", "1s2 2s2 2p6 3s2 3p4", "1s2 2s2 2p6 3s2 3p5", "1s2 2s2 2p6 3s2 3p6", "1s2 2s2 2p6 3s2 3p6 4s1", "1s2 2s2 2p6 3s2 3p6 4s2", "1s2 2s2 2p6 3s2 3p6 4s2 3d1", "1s2 2s2 2p6 3s2 3p6 4s2 3d2", "1s2 2s2 2p6 3s2 3p6 4s2 3d3", "1s2 2s2 2p6 3s2 3p6 4s1 3d5", "1s2 2s2 2p6 3s2 3p6 4s2 3d5", "1s2 2s2 2p6 3s2 3p6 4s2 3d6", "1s2 2s2 2p6 3s2 3p6 4s2 3d7", "1s2 2s2 2p6 3s2 3p6 4s2 3d8", "1s2 2s2 2p6 3s2 3p6 4s1 3d10", "1s2 2s2 2p6 3s2 3p6 4s2 3d10", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p2", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p3", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p4", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p5", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d2", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s1 4d4", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s1 4d5", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d5", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s1 4d7", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s1 4d8", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 4d10", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s1 4d10", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p2", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p3", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p4", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p5", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 5d1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 5d1 4f1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f3", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f4", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f5", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f6", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f7", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f7 5d1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f9", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f10", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f11", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f12", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f13", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d2", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d3", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d4", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d5", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d6", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d7", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s1 4f14 5d9", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s1 4f14 5d10", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p2", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p3", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p4", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p5", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 6d1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 6d2", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f2 6d1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f3 6d1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f4 6d1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f6", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f7", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f7 6d1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f9", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f10", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f11", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f12", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f13", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 7p1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d2", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d3", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d4", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d5", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d6", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d7", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d8", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d9", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d10", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d10 7p1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d10 7p2", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d10 7p3", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d10 7p4", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d10 7p5", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d10 7p6"]
    
    private let nobelshorthand: [String] = ["1s1", "1s2", "[He] 2s1", "[He] 2s2", "[He] 2s2 2p1", "[He] 2s2 2p2", "[He] 2s2 2p3", "[He] 2s2 2p4", "[He] 2s2 2p5", "[He] 2s2 2p6", "[Ne] 3s1", "[Ne] 3s2", "[Ne] 3s2 3p1", "[Ne] 3s2 3p2", "[Ne] 3s2 3p3", "[Ne] 3s2 3p4", "[Ne] 3s2 3p5", "[Ne] 3s2 3p6", "[Ar] 4s1", "[Ar] 4s2", "[Ar] 3d1 4s2", "[Ar] 3d2 4s2", "[Ar] 3d3 4s2", "[Ar] 3d5 4s1", "[Ar] 3d5 4s2", "[Ar] 3d6 4s2", "[Ar] 3d7 4s2", "[Ar] 3d8 4s2", "[Ar] 3d10 4s1", "[Ar] 3d10 4s2", "[Ar] 3d10 4s2 4p1", "[Ar] 3d10 4s2 4p2", "[Ar] 3d10 4s2 4p3", "[Ar] 3d10 4s2 4p4", "[Ar] 3d10 4s2 4p5", "[Ar] 3d10 4s2 4p6", "[Kr] 5s1", "[Kr] 5s2", "[Kr] 4d1 5s2", "[Kr] 4d2 5s2", "[Kr] 4d4 5s1", "[Kr] 4d5 5s1", "[Kr] 4d5 5s2", "[Kr] 4d7 5s1", "[Kr] 4d8 5s1", "[Kr] 4d10", "[Kr] 4d10 5s1", "[Kr] 4d10 5s2", "[Kr] 4d10 5s2 5p1", "[Kr] 4d10 5s2 5p2", "[Kr] 4d10 5s2 5p3", "[Kr] 4d10 5s2 5p4", "[Kr] 4d10 5s2 5p5", "[Kr] 4d10 5s2 5p6", "[Xe] 6s1", "[Xe] 6s2", "[Xe] 5d1 6s2", "[Xe] 4f1 5d1 6s2", "[Xe] 4f3 6s2", "[Xe] 4f4 6s2", "[Xe] 4f5 6s2", "[Xe] 4f6 6s2", "[Xe] 4f7 6s2", "[Xe] 4f7 5d1 6s2", "[Xe] 4f9 6s2", "[Xe] 4f10 6s2", "[Xe] 4f11 6s2", "[Xe] 4f12 6s2", "[Xe] 4f13 6s2", "[Xe] 4f14 6s2", "[Xe] 4f14 5d1 6s2", "[Xe] 4f14 5d2 6s2", "[Xe] 4f14 5d3 6s2", "[Xe] 4f14 5d4 6s2", "[Xe] 4f14 5d5 6s2", "[Xe] 4f14 5d6 6s2", "[Xe] 4f14 5d7 6s2", "[Xe] 4f14 5d9 6s1", "[Xe] 4f14 5d10 6s1", "[Xe] 4f14 5d10 6s2", "[Xe] 4f14 5d10 6s2 6p1", "[Xe] 4f14 5d10 6s2 6p2", "[Xe] 4f14 5d10 6s2 6p3", "[Xe] 4f14 5d10 6s2 6p4", "[Xe] 4f14 5d10 6s2 6p5", "[Xe] 4f14 5d10 6s2 6p6", "[Rn] 7s1", "[Rn] 7s2", "[Rn] 6d1 7s2", "[Rn] 6d2 7s2", "[Rn] 5f2 6d1 7s2", "[Rn] 5f3 6d1 7s2", "[Rn] 5f4 6d1 7s2", "[Rn] 5f6 7s2", "[Rn] 5f7 7s2", "[Rn] 5f7 6d1 7s2", "[Rn] 5f9 7s2", "[Rn] 5f10 7s2", "[Rn] 5f11 7s2", "[Rn] 5f12 7s2", "[Rn] 5f13 7s2", "[Rn] 5f14 7s2", "[Rn] 5f14 7s2 7p1", "[Rn] 5f14 6d2 7s2", "[Rn] 5f14 6d3 7s2", "[Rn] 5f14 6d4 7s2", "[Rn] 5f14 6d5 7s2", "[Rn] 5f14 6d6 7s2", "[Rn] 5f14 6d7 7s2", "[Rn] 5f14 6d9 7s1", "[Rn] 5f14 6d10 7s1", "[Rn] 5f14 6d10 7s2", "[Rn] 5f14 6d10 7s2 7p1", "[Rn] 5f14 6d10 7s2 7p2", "[Rn] 5f14 6d10 7s2 7p3", "[Rn] 5f14 6d10 7s2 7p4", "[Rn] 5f14 6d10 7s2 7p5", "[Rn] 5f14 6d10 7s2 7p6"]
    
    private let elementnamelist: [String] = ["H", "He", "Li", "Be", "B", "C", "N", "O", "F", "Ne", "Na", "Mg", "Al", "Si", "P", "S", "Cl", "Ar", "K", "Ca", "Sc", "Ti", "V", "Cr", "Mn", "Fe", "Co", "Ni", "Cu", "Zn", "Ga", "Ge", "As", "Se", "Br", "Kr", "Rb", "Sr", "Y", "Zr", "Nb", "Mb", "Tc", "Ru", "Rh", "Pd", "Ag", "Cd", "In", "Sn", "Sb", "Te", "I", "Xe", "Cs", "Ba", "La", "Ce", "Pr", "Nd", "Pm", "Sm", "Eu", "Gd", "Tb", "Dy", "Ho", "Er", "Tm", "Yb", "Lu", "Hf", "Ta", "W", "Re", "Os", "Ir", "Pt", "Au", "Hg", "Tl", "Pb", "Bi", "Po", "At", "Rn", "Fr", "Ra", "Ac", "Th", "Pa", "U", "Np", "Pu", "Am", "Cm", "Bk", "Cf", "Es", "Fm", "Md", "No", "Lr", "Rf", "Db", "Sg", "Bh", "Hs", "Mt", "Ds", "Rg", "Cn", "Nh", "Fl", "Mc", "Lv", "Ts", "Og"]
    
    @State private var element: String = ""
    
    var body: some View {
        
        ZStack {
            Text("Electron Configuration").font(.largeTitle).fontWeight(.bold).multilineTextAlignment(.leading).padding(.bottom, 725)
            
            VStack {
                Text("Type in element here:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading).padding(.bottom, 2.0)
                
                TextField("Element (Ex. Mg)",text: $element)
                    .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/34.0/*@END_MENU_TOKEN@*/)
                
                Text("Electron Configuration:")
                Text(elementlist[elementnamelist.firstIndex(of: element) ?? 11])
                
                Text("Electron Configuration /w Noble Gas Shorthand:")
                    .padding(.top, 10.0)
                Text(nobelshorthand[elementnamelist.firstIndex(of: element) ?? 11])
                
                
                Text("Electron Affinity:")
                    .padding(.top, 10.0)
                
                
                Spacer()
            }
            .padding(.top, 55.0).padding()
            
        }
        
        
    }
}

struct ElConfigSearchView_Previews: PreviewProvider {
    static var previews: some View {
        ElConfigSearchView()
    }
}
