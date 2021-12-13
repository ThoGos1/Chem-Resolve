//
//  ElConfigSearchView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/4/21.
//

import SwiftUI

struct ElConfigSearchView: View {

    public let elementlist: [String] = ["0" ,"1s1", "1s2", "1s2 2s1", "1s2 2s2", "1s2 2s2 2p1", "1s2 2s2 2p2", "1s2 2s2 2p3", "1s2 2s2 2p4", "1s2 2s2 2p5", "1s2 2s2 2p6", "1s2 2s2 2p6 3s1", "1s2 2s2 2p6 3s2", "1s2 2s2 2p6 3s2 3p1", "1s2 2s2 2p6 3s2 3p2", "1s2 2s2 2p6 3s2 3p3", "1s2 2s2 2p6 3s2 3p4", "1s2 2s2 2p6 3s2 3p5", "1s2 2s2 2p6 3s2 3p6", "1s2 2s2 2p6 3s2 3p6 4s1", "1s2 2s2 2p6 3s2 3p6 4s2", "1s2 2s2 2p6 3s2 3p6 4s2 3d1", "1s2 2s2 2p6 3s2 3p6 4s2 3d2", "1s2 2s2 2p6 3s2 3p6 4s2 3d3", "1s2 2s2 2p6 3s2 3p6 4s1 3d5", "1s2 2s2 2p6 3s2 3p6 4s2 3d5", "1s2 2s2 2p6 3s2 3p6 4s2 3d6", "1s2 2s2 2p6 3s2 3p6 4s2 3d7", "1s2 2s2 2p6 3s2 3p6 4s2 3d8", "1s2 2s2 2p6 3s2 3p6 4s1 3d10", "1s2 2s2 2p6 3s2 3p6 4s2 3d10", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p2", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p3", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p4", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p5", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d2", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s1 4d4", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s1 4d5", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d5", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s1 4d7", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s1 4d8", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 4d10", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s1 4d10", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p2", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p3", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p4", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p5", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 5d1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 5d1 4f1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f3", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f4", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f5", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f6", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f7", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f7 5d1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f9", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f10", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f11", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f12", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f13", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d2", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d3", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d4", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d5", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d6", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d7", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s1 4f14 5d9", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s1 4f14 5d10", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p2", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p3", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p4", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p5", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 6d1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 6d2", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f2 6d1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f3 6d1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f4 6d1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f6", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f7", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f7 6d1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f9", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f10", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f11", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f12", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f13", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 7p1"]


    public let longconfig: [String] = ["1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d2", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d3", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d4", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d5", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d6", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d7", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d8", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d9", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d10", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d10 7p1", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d10 7p2", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d10 7p3", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d10 7p4", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d10 7p5", "1s2 2s2 2p6 3s2 3p6 4s2 3d10 4p6 5s2 4d10 5p6 6s2 4f14 5d10 6p6 7s2 5f14 6d10 7p6"]


    public let nobleshorthand: [String] = ["0" ,"1s1", "1s2", "[He] 2s1", "[He] 2s2", "[He] 2s2 2p1", "[He] 2s2 2p2", "[He] 2s2 2p3", "[He] 2s2 2p4", "[He] 2s2 2p5", "[He] 2s2 2p6", "[Ne] 3s1", "[Ne] 3s2", "[Ne] 3s2 3p1", "[Ne] 3s2 3p2", "[Ne] 3s2 3p3", "[Ne] 3s2 3p4", "[Ne] 3s2 3p5", "[Ne] 3s2 3p6", "[Ar] 4s1", "[Ar] 4s2", "[Ar] 3d1 4s2", "[Ar] 3d2 4s2", "[Ar] 3d3 4s2", "[Ar] 3d5 4s1", "[Ar] 3d5 4s2", "[Ar] 3d6 4s2", "[Ar] 3d7 4s2", "[Ar] 3d8 4s2", "[Ar] 3d10 4s1", "[Ar] 3d10 4s2", "[Ar] 3d10 4s2 4p1", "[Ar] 3d10 4s2 4p2", "[Ar] 3d10 4s2 4p3", "[Ar] 3d10 4s2 4p4", "[Ar] 3d10 4s2 4p5", "[Ar] 3d10 4s2 4p6", "[Kr] 5s1", "[Kr] 5s2", "[Kr] 4d1 5s2", "[Kr] 4d2 5s2", "[Kr] 4d4 5s1", "[Kr] 4d5 5s1", "[Kr] 4d5 5s2", "[Kr] 4d7 5s1", "[Kr] 4d8 5s1", "[Kr] 4d10", "[Kr] 4d10 5s1", "[Kr] 4d10 5s2", "[Kr] 4d10 5s2 5p1", "[Kr] 4d10 5s2 5p2", "[Kr] 4d10 5s2 5p3", "[Kr] 4d10 5s2 5p4", "[Kr] 4d10 5s2 5p5", "[Kr] 4d10 5s2 5p6", "[Xe] 6s1", "[Xe] 6s2", "[Xe] 5d1 6s2", "[Xe] 4f1 5d1 6s2", "[Xe] 4f3 6s2", "[Xe] 4f4 6s2", "[Xe] 4f5 6s2", "[Xe] 4f6 6s2", "[Xe] 4f7 6s2", "[Xe] 4f7 5d1 6s2", "[Xe] 4f9 6s2", "[Xe] 4f10 6s2", "[Xe] 4f11 6s2", "[Xe] 4f12 6s2", "[Xe] 4f13 6s2", "[Xe] 4f14 6s2", "[Xe] 4f14 5d1 6s2", "[Xe] 4f14 5d2 6s2", "[Xe] 4f14 5d3 6s2", "[Xe] 4f14 5d4 6s2", "[Xe] 4f14 5d5 6s2", "[Xe] 4f14 5d6 6s2", "[Xe] 4f14 5d7 6s2", "[Xe] 4f14 5d9 6s1", "[Xe] 4f14 5d10 6s1", "[Xe] 4f14 5d10 6s2", "[Xe] 4f14 5d10 6s2 6p1", "[Xe] 4f14 5d10 6s2 6p2", "[Xe] 4f14 5d10 6s2 6p3", "[Xe] 4f14 5d10 6s2 6p4", "[Xe] 4f14 5d10 6s2 6p5", "[Xe] 4f14 5d10 6s2 6p6", "[Rn] 7s1", "[Rn] 7s2", "[Rn] 6d1 7s2", "[Rn] 6d2 7s2", "[Rn] 5f2 6d1 7s2", "[Rn] 5f3 6d1 7s2", "[Rn] 5f4 6d1 7s2", "[Rn] 5f6 7s2", "[Rn] 5f7 7s2", "[Rn] 5f7 6d1 7s2", "[Rn] 5f9 7s2", "[Rn] 5f10 7s2", "[Rn] 5f11 7s2", "[Rn] 5f12 7s2", "[Rn] 5f13 7s2", "[Rn] 5f14 7s2", "[Rn] 5f14 7s2 7p1"]


    public let longnoblelist: [String] = ["[Rn] 5f14 6d2 7s2", "[Rn] 5f14 6d3 7s2", "[Rn] 5f14 6d4 7s2", "[Rn] 5f14 6d5 7s2", "[Rn] 5f14 6d6 7s2", "[Rn] 5f14 6d7 7s2", "[Rn] 5f14 6d9 7s1", "[Rn] 5f14 6d10 7s1", "[Rn] 5f14 6d10 7s2", "[Rn] 5f14 6d10 7s2 7p1", "[Rn] 5f14 6d10 7s2 7p2", "[Rn] 5f14 6d10 7s2 7p3", "[Rn] 5f14 6d10 7s2 7p4", "[Rn] 5f14 6d10 7s2 7p5", "[Rn] 5f14 6d10 7s2 7p6"]


    public let elementnamelist: [String] = ["0" ,"H", "He", "Li", "Be", "B", "C", "N", "O", "F", "Ne", "Na", "Mg", "Al", "Si", "P", "S", "Cl", "Ar", "K", "Ca", "Sc", "Ti", "V", "Cr", "Mn", "Fe", "Co", "Ni", "Cu", "Zn", "Ga", "Ge", "As", "Se", "Br", "Kr", "Rb", "Sr", "Y", "Zr", "Nb", "Mb", "Tc", "Ru", "Rh", "Pd", "Ag", "Cd", "In", "Sn", "Sb", "Te", "I", "Xe", "Cs", "Ba", "La", "Ce", "Pr", "Nd", "Pm", "Sm", "Eu", "Gd", "Tb", "Dy", "Ho", "Er", "Tm", "Yb", "Lu", "Hf", "Ta", "W", "Re", "Os", "Ir", "Pt", "Au", "Hg", "Tl", "Pb", "Bi", "Po", "At", "Rn", "Fr", "Ra", "Ac", "Th", "Pa", "U", "Np", "Pu", "Am", "Cm", "Bk", "Cf", "Es", "Fm", "Md", "No", "Lr"]


    public let longelementnamelist: [String] = ["Rf", "Db", "Sg", "Bh", "Hs", "Mt", "Ds", "Rg", "Cn", "Nh", "Fl", "Mc", "Lv", "Ts", "Og"]


    public let affinitylist: [String] = ["0", "72.8", "-48", "59.6", "-48", "26.9", "121.7", "-6.8", "141", "328", "-116", "52.8", "-40", "42.5", "133.6", "71", "200", "348.5", "-96", "48.4", "2.37", "18.1", "7.6", "50.6", "65.2", "-50", "15.7", "63.7", "112", "119.2", "-58", "28.9", "119", "78", "195", "324.6", "-96", "46.9", "5.03", "29.6", "41.1", "86.1", "71.9", "53", "101.3", "109.7", "53.7", "125.6", "-68", "28.9", "107.3", "103.2", "190,2", "295.2", "-77", "45.5", "13.95", "53.7", "55", "10.5", "9.4", "12.5", "15.6", "11.2", "13.2", "12.7", "33.9", "32.6", "30.1", "99", "-1.93", "23", "17.2", "31", "78.8", "5.8", "104", "150.9", "205", "222.7", "-48", "30.8", "34.4", "90.9", "136", "233.1", "-68", "46.9", "9.6", "33.8", "58.6", "53", "30.4", "45.9", "-48.3", "9.9", "27.2", "-165.2", "-97.3", "-28.6", "33.9", "93.9", "-223.2", "-30"]

    public let longaffinitylist: [String] = ["Undefined", "Undefined", "Undefined", "Undefined", "Undefined", "Undefined", "Undefined", "151", "Undefined", "66.6", "Undefined", "35.3", "74.9", "165.9", "5.4"]


    public let ionizationlist: [String] = ["0", "1312", "2372.3", "520.2", "899.5", "800.6", "1086.5", "1402.3", "1313.9", "1681.0", "2080.7", "495.8", "737.7", "577.5", "786.5", "1011.8", "999.6", "1251.2", "1520.6", "418.8", "589.8", "633.1", "658.8", "650.9", "652.9", "717.3", "762.5", "760.4", "737.1", "745.5", "906.4", "578.8", "762", "947.0", "941.0", "1139.9", "1350.8", "403.0", "549.5", "600", "640.1", "652.1", "684.3", "702", "710.2", "719.7", "804.4", "731.0", "867.8", "558.3", "708.6", "834", "869.3", "1008.4", "1170.4", "375.7", "502.9", "538.1", "534.4", "527", "533.1", "540", "544.5", "547.1", "593.4", "565.8", "573.0", "581.0", "589.3", "596.7", "603.4", "523.5", "658.5", "761", "770", "760", "840", "880", "870", "890.1", "1007.1", "589.4", "715.6", "703", "812.1", "899.003", "1037", "380", "509.3", "499", "587", "568", "597.6", "604.5", "584.7", "578", "581", "601", "608", "619", "627", "635", "642", "470"]

    public let longionizationlist: [String] = ["580", "665", "757", "740", "730", "800", "960", "1020", "1155", "707.2", "832.2", "538.3", "663.9", "736.9", "860.1"]


    public let numelectronlist: [String] = ["0", "1", "2", "2, 1", "2, 2", "2, 3", "2, 4", "2, 5", "2, 6", "2, 7", "2, 8", "2, 8, 1", "2, 8, 2", "2, 8, 3", "2, 8, 4", "2, 8, 5", "2, 8, 6", "2, 8, 7", "2, 8, 8", "2, 8, 8, 1", "2, 8, 8, 2", "2, 8, 9, 2", "2, 8, 10, 2", "2, 8, 11, 2", "2, 8, 13, 1", "2, 8, 13, 2", "2, 8, 14, 2", "2, 8, 15, 2", "2, 8, 16, 2", "2, 8, 18, 1", "2, 8, 18, 2", "2, 8, 18, 3", "2, 8, 18, 4", "2, 8, 18, 5", "2, 8, 18, 6", "2, 8, 18, 7", "2, 8, 18, 8", "2, 8, 18, 8, 1", "2, 8, 18, 8, 2", "2, 8, 18, 9, 2", "2, 8, 18, 10, 2", "2, 8, 18, 12, 1", "2, 8, 18, 13, 1", "2, 8, 18, 13, 2", "2, 8, 18, 15, 1", "2, 8, 18, 16, 1", "2, 8, 18, 18, 0", "2, 8, 18, 18, 1", "2, 8, 18, 18, 2", "2, 8, 18, 18, 3", "2, 8, 18, 18, 4", "2, 8, 18, 18, 5", "2, 8, 18, 18, 6", "2, 8, 18, 18, 7", "2, 8, 18, 18, 8", "2, 8, 18, 18, 8, 1", "2, 8, 18, 18, 8, 2", "2, 8, 18, 18, 9, 2", "2, 8, 18, 19, 9, 2", "2, 8, 18, 21, 8, 2", "2, 8, 18, 22, 8, 2", "2, 8, 18, 23, 8, 2", "2, 8, 18, 24, 8, 2", "2, 8, 18, 25, 8, 2", "2, 8, 18, 25, 9, 2", "2, 8, 18, 27, 8, 2", "2, 8, 18, 28, 8, 2", "2, 8, 18, 29, 8, 2", "2, 8, 18, 30, 8, 2", "2, 8, 18, 31, 8, 2", "2, 8, 18, 32, 8, 2", "2, 8, 18, 32, 9, 2", "2, 8, 18, 32, 10, 2", "2, 8, 18, 32, 11, 2", "2, 8, 18, 32, 12, 2", "2, 8, 18, 32, 13, 2", "2, 8, 18, 32, 14, 2", "2, 8, 18, 32, 15, 2", "2, 8, 18, 32, 17, 1", "2, 8, 18, 32, 18, 1", "2, 8, 18, 32, 18, 2", "2, 8, 18, 32, 18, 3", "2, 8, 18, 32, 18, 4", "2, 8, 18, 32, 18, 5", "2, 8, 18, 32, 18, 6", "2, 8, 18, 32, 18, 7", "2, 8, 18, 32, 18, 8", "2, 8, 18, 32, 18, 8, 1", "2, 8, 18, 32, 18, 8, 2", "2, 8, 18, 32, 18, 9, 2", "2, 8, 18, 32, 18, 10, 2", "2, 8, 18, 32, 20, 9, 2", "2, 8, 18, 32, 21, 9, 2", "2, 8, 18, 32, 22, 9, 2", "2, 8, 18, 32, 24, 8, 2", "2, 8, 18, 32, 25, 8, 2", "2, 8, 18, 32, 25, 9, 2", "2, 8, 18, 32, 27, 8, 2", "2, 8, 18, 32, 28, 8, 2", "2, 8, 18, 32, 29, 8, 2", "2, 8, 18, 32, 30, 8, 2", "2, 8, 18, 32, 31, 8, 2", "2, 8, 18, 32, 32, 8, 2", "2, 8, 18, 32, 32, 9, 2"]

    private let longnumelectronlist: [String] = ["2, 8, 18, 32, 32, 10, 2", "2, 8, 18, 32, 32, 11, 2", "2, 8, 18, 32, 32, 12, 2", "2, 8, 18, 32, 32, 13, 2", "2, 8, 18, 32, 32, 14, 2", "2, 8, 18, 32, 32, 15, 2", "2, 8, 18, 32, 32, 17, 1", "2, 8, 18, 32, 32, 17, 2", "2, 8, 18, 32, 32, 18, 2", "2, 8, 18, 32, 32, 18, 3", "2, 8, 18, 32, 32, 18, 4", "2, 8, 18, 32, 32, 18, 5", "2, 8, 18, 32, 32, 18, 6", "2, 8, 18, 32, 32, 18, 7", "2, 8, 18, 32, 32, 18, 8"]


    public let ionformlist: [String] = ["0", "1+", "0", "1+", "2+", "3-, 3+", "4+", "3-", "2-", "1-", "0", "1+", "2+", "3+", "4+, 4-", "5+, 3+, 3-", "2-, 2+, 4+, 6+", "1-", "0", "1+", "2+", "3+", "4+, 3+", "2+, 3+, 4+, 5+", "2+, 3+, 6+", "2+, 4+, 7+", "2+, 3+", "2+, 3+", "2+", "1+, 2+", "2+", "3+", "4-, 2+, 4+", "3-, 3+, 5+", "2-, 4+, 6+", "1-, 1+, 5+", "0", "1+", "2+", "3+", "4+", "3+, 5+", "3+, 6+", "6+", "3+, 4+, 8+", "4+", "2+, 4+", "1+", "2+", "3+", "2+, 4+", "3-, 3+, 5+", "2-, 4+, 6+", "1-", "0", "1+", "2+", "3+", "3+, 4+", "3+", "3+, 4+", "3+", "3+", "3+", "3+", "3+, 4+", "3+", "3+", "3+", "3+", "3+", "3+", "4+", "5+", "6+", "2+, 4+, 6+, 7+", "3+, 4+, 6+, 8+", "3+, 4+, 6+", "2+, 4+, 6+", "1+, 2+, 3+", "1+, 2+", "1+, 3+", "2+, 4+", "3+", "2+, 4+", "?", "0", "?", "2+", "3+", "4+", "5+", "3+, 4+, 6+", "5+", "4+", "3+, 4+", "3+", "3+", "3+", "3+", "3+", "2+, 3+", "2+, 3+", "3+"]

    public let longionformlist: [String] = ["?", "?", "?", "?", "?", "?", "?", "?", "?", "?", "?", "?", "?", "?", "?"]
    
    
    @State private var element: String = ""
    
    var body: some View {
        
        ZStack {
            Text("Electron Trends").font(.largeTitle).fontWeight(.bold).padding(.bottom, 725)
            
            VStack {
                
                
                Group {
                    Text("Type in element here:")
                        .fontWeight(.black)
                        .padding(.top)
                    
                    TextField("Element (Ex. Mg)",text: $element)
                        .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                }
                
                
                Group {
                    Text("Atomic Number (# Protons/Electrons):")
                        .fontWeight(.semibold)
                    Text(getAnum(Z: element, Zlist: elementnamelist, Llist: longelementnamelist))
                        .padding(.bottom, 25.0)
                }
                
                
                Group {
                    Text("Electron Configuration:")
                        .fontWeight(.semibold)
                    Text(getEinfo(Z: element, Zlist: elementnamelist, Nlist: elementlist, LNlist: longconfig, LZlist: longelementnamelist))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 25.0)
                        .frame(width: 360.0, height: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/)
                }

                
                Group {
                    Text("Shorthand Electron Configuration:")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    Text(getEinfo(Z:element, Zlist: elementnamelist, Nlist: nobleshorthand, LNlist: longnoblelist, LZlist: longelementnamelist))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 25.0)
                }
                
                
                Group {
                    Text("Electron Affinity (kJ/mol):")
                        .fontWeight(.semibold)
                    Text(getEinfo(Z: element, Zlist: elementnamelist, Nlist: affinitylist, LNlist: longaffinitylist, LZlist: longelementnamelist))
                        .padding(.bottom, 25.0)
                }

                
                Group {
                    Text("Common Ion Formation Charges:")
                        .fontWeight(.semibold)
                    Text(getEinfo(Z: element, Zlist: elementnamelist, Nlist: ionformlist, LNlist: longionformlist, LZlist: longelementnamelist))
                        .padding(.bottom, 25.0)
                }
                
                
                Group {
                    Text("First Ionization Energy (eV):")
                        .fontWeight(.semibold)
                    Text(getEinfo(Z: element, Zlist: elementnamelist, Nlist: ionizationlist, LNlist: longionizationlist, LZlist: longelementnamelist))
                        .padding(.bottom, 25.0)
                }
                
                
                Group {
                    Text("Electrons on Energy Levels:")
                        .fontWeight(.semibold)
                    Text(getEinfo(Z: element, Zlist: elementnamelist, Nlist: numelectronlist, LNlist: longnumelectronlist, LZlist: longelementnamelist))
                        .padding(.bottom, 25.0)
                }
                
                Spacer()
                
            }
            .padding(.top, 55.0)
            
        }
        
    }
}


func getAnum(Z: String, Zlist: [String], Llist: [String]) -> String {
    
    if Zlist.contains(Z) {
        return String((Zlist.firstIndex(of: Z) ?? 0))
    }
    else if Z == "" {
        return String((Llist.firstIndex(of: Z) ?? 0))
    }
    else if Llist.contains(Z){
        return String((Llist.firstIndex(of: Z) ?? 0) + 104)
    }
    else {
        return "0"
    }
}

func getEinfo(Z: String, Zlist: [String], Nlist: [String], LNlist: [String], LZlist: [String]) -> String {
    
    if Zlist.contains(Z) {
        return Nlist[Zlist.firstIndex(of: Z) ?? 0]
    }
    else if Z == "" {
        return Nlist[Zlist.firstIndex(of: Z) ?? 0]
    }
    else if LZlist.contains(Z){
        return LNlist[LZlist.firstIndex(of: Z) ?? 0]
    }
    else {
        return "0"
    }
}













// Doesn't matter
struct ElConfigSearchView_Previews: PreviewProvider {
    static var previews: some View {
        ElConfigSearchView()
    }
}
