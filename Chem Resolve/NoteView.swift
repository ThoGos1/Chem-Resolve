//
//  NoteView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 10/28/21.
//

import SwiftUI

struct NoteView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: MatterView()) {
                    HStack {
                        Image(systemName: "scalemass")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Properties of Matter")
                    }
                }
                
                NavigationLink(destination: TesterView()) {
                    HStack {
                        Image(systemName: "circle.hexagongrid.circle")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("The Mole")
                    }
                }
                
                NavigationLink(destination: TesterView()) {
                    HStack {
                        Image(systemName: "atom")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Atoms and Ions")
                    }
                }
                
                NavigationLink(destination: TesterView()) {
                    HStack {
                        Image(systemName: "plusminus")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Quantum Chemistry")
                    }
                }
                
                NavigationLink(destination: TesterView()) {
                    HStack {
                        Image(systemName: "circle.grid.cross")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Compounds")
                    }
                }
                
                NavigationLink(destination: TesterView()) {
                    HStack {
                        Image(systemName: "flame")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Chemical Reactions")
                    }
                }
            }
            .navigationTitle("Chemistry Notes")
        }
    }
}









struct NoteView_Previews: PreviewProvider {
    static var previews: some View {
        NoteView()
    }
}
