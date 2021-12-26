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
                
                GroupBox {
                    
                    Text("Thank you for using Chem Resolve.\nChem Resolve has been developed by me, ThoGos.\nI'm a first-generation college student at University of California - San Diego.\nI made this app to help college students like myself, that would rather focus on learning & analysis and less on busy work.")
                        .lineSpacing(8).padding(.bottom, 15.0)

                    
                }
                
                GroupBox(label : Text("Feedback:")
                            .fontWeight(.bold)) {
                    
                    Text("If you have any suggestions for new additions.\nMy Email address is: javalite@javalite.com")
                        .lineSpacing(8).padding(.bottom, 15.0)
                        .frame(width: 320.0)
                        .padding(.top, -5.0)

                    
                }
                
                GroupBox(label : Text("Support Me:")
                            .fontWeight(.bold)) {
                    
                    Text("If you have enjoyed the features of Chem Resolve and you have some spare cash, a donation would be greatly appreciated and helps keep this app on the App Store.")
                        .lineSpacing(8)
                        .frame(width: 320.0)
                        .padding(.top, -5.0)
                    Text("(Tap and Hold to Copy)")
                        .multilineTextAlignment(.center)
                        .padding(.top, 0.5)
                        
                    GroupBox {
                        
                        Text("PayPal: @ThoGos1")
                            .textSelection(.enabled)
                        
                    }
                    .groupBoxStyle(PayPalGroupBox())
                    
                    GroupBox {
                        
                        Text("Venmo: @ThoGos")
                            .textSelection(.enabled)
                        
                    }
                    .groupBoxStyle(VenmoGroupBox())
                    
                    GroupBox {
                        
                        Text("BTC: 34mAVv4kBWxH8yTDwHjgsLgkXSLh62S2M4")
                            .textSelection(.enabled)
                        
                    }
                    .groupBoxStyle(BitGroupBox())
                    
                }
                

                
                
                Spacer()
            }
            
        }
        .padding(.horizontal)
            
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
        }
    }
}


struct RadiiView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Image("atomradii")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
        }
    }
}


struct IonRadiiView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Image("ionradii")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
        }
    }
}


struct CommonIonView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Image("comion")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
        }
    }
}


struct SolubilityView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Image("soluble")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
        }
    }
}


struct LewisView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Image("lewis")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
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


struct PayPalGroupBox: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.content
            .padding()
            .padding(2)
            .background(RoundedRectangle(cornerRadius: 8).fill(Color(red: 0.4627, green: 0.8392, blue: 1.0)))
            .overlay(configuration.label.padding(.leading, 4), alignment: .topLeading)
    }
}


struct VenmoGroupBox: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.content
            .padding()
            .padding(2)
            .padding(.horizontal, 3)
            .background(RoundedRectangle(cornerRadius: 8).fill(Color(red: 0.2, green: 0.6392, blue: 1.0)))
            .overlay(configuration.label.padding(.leading, 4), alignment: .topLeading)
    }
}


struct BitGroupBox: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.content
            .padding()
            .padding(2)
            .padding(.horizontal, 3)
            .background(RoundedRectangle(cornerRadius: 8).fill(Color.orange))
            .overlay(configuration.label.padding(.leading, 4), alignment: .topLeading)
    }
}



struct ExtraView_Previews: PreviewProvider {
    static var previews: some View {
        ExtraView()
    }
}
