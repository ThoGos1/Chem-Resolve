//
//  AdvView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/3/21.
//

import SwiftUI

struct AdvView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: TesterView()) {
                    HStack {
                        Image(systemName: "bolt.circle")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Electromagnetism")
                    }
                }
                
                NavigationLink(destination: TesterView()) {
                    HStack {
                        Image(systemName: "sunrise.fill")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Atomic Spectra")
                    }
                }
                
                NavigationLink(destination: TesterView()) {
                    HStack {
                        Image(systemName: "circle.grid.cross")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Quantum Chemistry")
                    }
                }
                
                NavigationLink(destination: TesterView()) {
                    HStack {
                        Image(systemName: "dot.radiowaves.right")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Wave-Particle Duality")
                    }
                }
                
                NavigationLink(destination: TesterView()) {
                    HStack {
                        Image(systemName: "waveform.and.magnifyingglass")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("The Wave-Function and Nodes")
                    }
                }
                
                NavigationLink(destination: TesterView()) {
                    HStack {
                        Image(systemName: "123.rectangle")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Quantum Numbers")
                    }
                }
                
                NavigationLink(destination: TesterView()) {
                    HStack {
                        Image(systemName: "rectangle.and.pencil.and.ellipsis")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Electron Configuration")
                    }
                }
                
                NavigationLink(destination: TesterView()) {
                    HStack {
                        Image(systemName: "lines.measurement.horizontal")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Atomic & Ionic Volume and Radii")
                    }
                }
                
            }
            .navigationTitle("Adv Chemistry Notes")
        }
    }
}


struct AdvView_Previews: PreviewProvider {
    static var previews: some View {
        AdvView()
    }
}
