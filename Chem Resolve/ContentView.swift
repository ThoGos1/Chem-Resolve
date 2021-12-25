//
//  ContentView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 10/28/21.
//

// alt + i = |
// shift + alt + 7 = \
// ∗ for better multiply

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().barTintColor = .systemBackground
    }
    
    var body: some View {
        TabView {
            
            NoteView()
                .tabItem {
                    Image(systemName: "note.text")
                    Text("Notes")
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



struct HiddenNavigationBar: ViewModifier {
    func body(content: Content) -> some View {
        content
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
    }
}

extension View {
    func hiddenNavigationBarStyle() -> some View {
        modifier( HiddenNavigationBar() )
    }
}





// This is code for the Preview, so don't change this, so this isn't important for the app itself
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
