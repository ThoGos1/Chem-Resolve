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
                        
                        NavigationLink(destination: AboutView()) {
                            Text("About Me and Contact")
                                .padding(.vertical, 4.5)
                        }
                        
                        NavigationLink(destination: ElConfigSearchView()) {
                            Text("Electron Trends Searcher")
                                .padding(.vertical, 4.5)
                        }
                        
                        NavigationLink(destination: ElementInfoView()) {
                            Text("Element Info Searcher")
                                .padding(.vertical, 4.5)
                        }
                        
                        Group {
                            
                            NavigationLink(destination: OrbitalTableView()) {
                                Text("Single Electron Orbital Graph")
                                    .padding(.vertical, 4.5)
                            }
                            
                            NavigationLink(destination: RadiiView()) {
                                Text("Atomic Radii Graphic")
                                    .padding(.vertical, 4.5)
                            }
                            
                            NavigationLink(destination: IonRadiiView()) {
                                Text("Ionic Radii Graphic")
                                    .padding(.vertical, 4.5)
                            }
                            
                            NavigationLink(destination: CommonIonView()) {
                                Text("Common Ions Nomeclature")
                                    .padding(.vertical, 4.5)
                            }
                            
                            NavigationLink(destination: SolubilityView()) {
                                Text("Solubility table")
                                    .padding(.vertical, 4.5)
                            }
                            
                            NavigationLink(destination: LewisView()) {
                                Text("Lewis Structure and VSERP Table")
                                    .padding(.vertical, 4.5)
                            }
                            
                        }
                        
                        NavigationLink(destination: MiniPeriodView()) {
                            Text("Minimalist Periodic Table")
                                .padding(.vertical, 4.5)
                        }
                        
                        NavigationLink(destination: JavaliteView()) {
                            Text("Self-Written Chemistry Articles")
                                .padding(.vertical, 4.5)
                        }
                        
                    }
                    Text("Version: " + getVer())
                }
            }
            
            .navigationTitle("Extra's")
        }
    }
}

struct AboutView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            
            VStack {
                
                Text("About Me").font(.title).fontWeight(.bold).padding(.top, -10.0).padding(.bottom)
                
                Text("Thank you for using Chem Resolve, every download is appreciated greatly.\nChem Resolve is developed my me, ThoGos.\nI'm a first-generation college student at UC San Diego.\nI made this app to help college students like myself, that would rather focus learning and analysis and less on busy work.")
                    .padding(.horizontal, 20).lineSpacing(8).padding(.bottom, 15.0)
                
                Text("Chem Resolve is always trying to improve, and it was made to help students like myself.\nSo feel free to contact me with suggestions of new additions, like new solvers.\n\nMy Email address is: javalite@javalite.com")
                    .padding(.horizontal, 20).lineSpacing(8)
                
                Spacer()
            }
            
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


struct LewisView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Image("lewis")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .offset(x: -3, y: 0)
        }
    }
}

struct JavaliteView: View {
    var body: some View {
        NavigationView {
            SwiftUIWebView(url: URL(string: "https://www.javalite.com/"))
        }
        .navigationTitle("JavaLite")
        
    }
    
    
}


func getVer() -> String {
    
    let ver = (Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "Test") + " ("
    
    let bui = (Bundle.main.infoDictionary?["CFBundleVersion"] as? String ?? "Test") + ")"
    
    return ver + bui
}




struct ExtraView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ExtraView()
                
        }
                
    }
}
