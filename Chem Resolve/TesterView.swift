//
//  TesterView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 10/28/21.
//

import SwiftUI

struct TesterView: View {
    
    @State var x = 0
    let home = "Hello"
    
    
    var body: some View {
        ZStack {
            
            Image("white").resizable().ignoresSafeArea()
            
            VStack() {
                Text(home).font(.title)
                    .padding(.bottom, 10.0)
                Text(String(x))
                
                Button("Click plz") {
                    x += 2
                }
                
                Spacer()
                
                Image("green").resizable().aspectRatio(contentMode: .fit).padding(.bottom, 35.0)
            }
        
    }
    }
}

struct TesterView_Previews: PreviewProvider {
    static var previews: some View {
        TesterView()
    }
}
