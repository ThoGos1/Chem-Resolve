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
                
                NavigationLink(destination: SpectraView()) {
                    HStack {
                        Image(systemName: "flame.circle")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("CxHyOz Combustion Analysis")
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
                
                NavigationLink(destination: WaveNNodeView()) {
                    HStack {
                        Image(systemName: "waveform.and.magnifyingglass")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Empirical Formula & Percentage")
                    }
                }
                
                NavigationLink(destination: QuantaNumView()) {
                    HStack {
                        Image(systemName: "123.rectangle")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Mole and Mass Conversions")
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
                
                NavigationLink(destination: ElConfigNoteView()) {
                    HStack {
                        Image(systemName: "personalhotspot")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Lewis Structure and VSEPR Help")
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
