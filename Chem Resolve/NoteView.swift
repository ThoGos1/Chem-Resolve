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
                        Text("The Mole & Composition")
                    }
                }
                
                NavigationLink(destination: TesterView()) {
                    HStack {
                        Image(systemName: "atom")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("The Atom & the Nucleus")
                    }
                }
                
                NavigationLink(destination: TesterView()) {
                    HStack {
                        Image(systemName: "minus.circle")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Electrons")
                    }
                }
                
                NavigationLink(destination: TesterView()) {
                    HStack {
                        Image(systemName: "tablecells")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("The Periodic Table")
                    }
                }
                
                NavigationLink(destination: TesterView()) {
                    HStack {
                        Image(systemName: "plus.forwardslash.minus")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Ions")
                    }
                }
                
                NavigationLink(destination: TesterView()) {
                    HStack {
                        Image(systemName: "cloud.rain.fill")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Precipitation Reactions")
                    }
                }
                
                NavigationLink(destination: TesterView()) {
                    HStack {
                        Image(systemName: "aqi.medium")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Compounds and Molecules")
                    }
                }
                
                NavigationLink(destination: TesterView()) {
                    HStack {
                        Image(systemName: "textformat.abc")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Chemical Nomenclature")
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
