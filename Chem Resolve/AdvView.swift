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
                        Image(systemName: "sun.max")
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
                        Image(systemName: "waveform.and.magnifyingglass")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("The Wave-Function and Nodes")
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
