//
//  ContentView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 10/28/21.
//

// alt + i = |
// shift + alt + 7 = \


import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            NoteView()
                .tabItem {
                    Image(systemName: "note.text")
                    Text("Basic Notes")
                }
            
            AdvView()
                .tabItem {
                    Image(systemName: "note.text.badge.plus")
                    Text("Adv. Notes")
                }
            
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Solver")
                }
            
            ExtraView()
                .tabItem {
                    Image(systemName: "doc")
                    Text("Extra")
                }
        }
    }
}




// This is code for the Preview, so don't change this, so this isn't important for the app itself
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
