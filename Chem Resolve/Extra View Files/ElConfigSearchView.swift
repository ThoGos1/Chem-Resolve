//
//  ElConfigSearchView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 11/4/21.
//

import SwiftUI

struct ElConfigSearchView: View {
    var body: some View {
        Text("Be able to search up different elemts and see their electron configratuins like 2s^2 and 3p^3 stuff. Like you just need to type H, He, or Ne and then you will get it. lowkey go on the chemistry app you have and jsut copy it, also remember to have both noble gas shorthand. also have the electron affinity numbers and stuff like that")
        
        Text("Also the way this needs to be set up, is that you go to a page and then you type the atom symbol into a text field, and then press a button, and then under that text box you get the information, and the default one should just be hydrogen or einsteinium")
    }
}

struct ElConfigSearchView_Previews: PreviewProvider {
    static var previews: some View {
        ElConfigSearchView()
    }
}
