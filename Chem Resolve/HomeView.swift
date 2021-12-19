//
//  HomeView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 10/28/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: CHCombustView()) {
                    HStack {
                        Image(systemName: "flame")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("CxHy Combustion Analysis")
                    }
                }
                
                NavigationLink(destination: AdvCHOCombustView()) {
                    HStack {
                        Image(systemName: "flame.circle")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("CxHyOz Combustion Analysis")
                    }
                }
                
                NavigationLink(destination: EmpirePercentView()) {
                    HStack {
                        Image(systemName: "waveform.and.magnifyingglass")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Empirical Formula & Percentage")
                    }
                }
                
                NavigationLink(destination: BondCharView()) {
                    HStack {
                        Image(systemName: "circle.grid.cross")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Bond Characteristics of X-Y")
                    }
                }
                
                NavigationLink(destination: DilutionSolveView()) {
                    HStack {
                        Image(systemName: "dot.radiowaves.right")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Dilution Calculator")
                    }
                }
                
                NavigationLink(destination: IsoToElView()) {
                    HStack {
                        Image(systemName: "rectangle.and.pencil.and.ellipsis")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Determine Element from Isotopes")
                    }
                }
                
                
            }
            .navigationTitle("Chemistry Solver")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
