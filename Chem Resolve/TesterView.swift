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
                
                // Sinus
                Text(String(Double(floor(10000*sin(30.0 * Double.pi / 180))/10000)))
                
                // Cosinus
                Text(String(Double(floor(10000*cos(30.0 * Double.pi / 180))/10000)))
                
                // Tangent
                Text(String(Double(floor(10000*tan(30.0 * Double.pi / 180))/10000)))
                
                // Arctan
                Text(String(Double(floor(10000*atan(0.57 * Double.pi / 180))/10000)))
                
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
