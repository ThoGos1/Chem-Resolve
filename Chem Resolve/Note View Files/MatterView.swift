//
//  MatterView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 10/31/21.
//

import SwiftUI

struct MatterView: View {
    var body: some View {
        ZStack {
            Text("Properties of Matter").font(.largeTitle).fontWeight(.bold).multilineTextAlignment(.leading).padding(.bottom, 725)
            VStack {
                Text("Physical Properties:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading).padding(.bottom, 2.0)
                Text("What a thing looks like, smells like, its color, mass, size, melting point, etc.")
                Spacer()
            }
            .padding(.top, 55.0).padding()
        }
    }
}







struct MatterView_Previews: PreviewProvider {
    static var previews: some View {
        MatterView()
    }
}
