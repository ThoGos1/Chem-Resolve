//
//  ExtraView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 10/29/21.
//

import SwiftUI

struct ExtraView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        
                        NavigationLink(destination: ContactView()) {
                            Text("Contact Me / Feedback")
                        }
                        
                        NavigationLink(destination: AboutView()) {
                            Text("About Me")
                        }
                        
                        NavigationLink(destination: ElConfigSearchView()) {
                            Text("Electron Trends Searcher")
                        }
                        
                        NavigationLink(destination: ElementInfoView()) {
                            Text("Element Info Searcher")
                        }
                        
                        NavigationLink(destination: MiniPeriodView()) {
                            Text("Minimalist Periodic Table Background")
                        }
                        
                        NavigationLink(destination: OrbitalTableView()) {
                            Text("Single Electron Orbital Graph")
                        }
                        
                        NavigationLink(destination: RadiiView()) {
                            Text("Atomic Radii Graphic")
                        }
                        
                        NavigationLink(destination: IonRadiiView()) {
                            Text("Ionic Radii Graphic")
                        }
                        
                        NavigationLink(destination: CommonIonView()) {
                            Text("Common Ions Nomeclature")
                        }
                        
                        NavigationLink(destination: SolubilityView()) {
                            Text("Solubility table")
                        }
                        
                    }
                    
                    Image("Chem Logo nob")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200.0, height: 80.0)
                    
                    Text("Version: bruh")
                }
            }
            
//            Image("ChemLogo")
//                .resizable(resizingMode: .stretch)
//                .aspectRatio(contentMode: .fit)
//                .scaleEffect(0.3)
//                .offset(x: 0, y: 200)
            
            .navigationTitle("Extra's")
        }
    }
}



struct ContactView: View {
    var body: some View {
        ZStack {
            VStack {
                Text("Contact Me")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    
                Spacer()
            }
            VStack {
                Text("Thank you for using Chem Resolve, every download is appreciated greaty.\nChem Resolve is always trying to improve, and it was made to help students like myself.\nSo I ask of you to feel free to contact me with suggestions of new additions, like new solvers.\n\nMy Email address is: javalite@javalite.com")
                    .padding(.horizontal, 20).lineSpacing(8)
                Spacer()
            }
            .padding(.top, 55.0)
        }
    }
}



struct AboutView: View {
    var body: some View {
        ZStack {
            VStack {
                Text("About Me")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    
                Spacer()
            }
            VStack {
                Text("Thank you for using Chem Resolve, every download is appreciated greaty.\nChem Resolve is developed my me, ThoGos.\nI'm a first-generation college student at UC San Diego.\nI made this app to help college students like myself, that would rather focus learning and analysis and less on busy work.\nIf you ever see an ad on this app it would be great if you interact with it, as I'm already broke, and hosting an app on the App Store isn't exactly cheap :)")
                    .padding(.horizontal, 20).lineSpacing(8)
                Spacer()
            }
            .padding(.top, 55.0)
        }
    }
}



struct MiniPeriodView: View {
    var body: some View {
        Image("neutroniphoneback").resizable(resizingMode: .stretch).ignoresSafeArea()
    }
}



struct OrbitalTableView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Image("orbitalgraph")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .offset(x: -3, y: 0)
        }
    }
}


struct RadiiView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Image("atomradii")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .offset(x: -9, y: 0)
        }
    }
}


struct IonRadiiView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Image("ionradii")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .offset(x: -9, y: 0)
        }
    }
}


struct CommonIonView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Image("comion")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .offset(x: -9, y: 0)
        }
    }
}


struct SolubilityView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Image("soluble")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .offset(x: -9, y: 0)
        }
    }
}


struct ExtraView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ExtraView()
                
        }
        
//        ContactView()
        
//        AboutView()
        
//        MiniPeriodView()
//        OrbitalTableView()
        
    }
}
