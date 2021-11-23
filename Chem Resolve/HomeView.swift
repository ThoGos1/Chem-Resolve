//
//  HomeView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 10/28/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ElectromagnetView()) {
                    HStack {
                        Image(systemName: "bolt.circle")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("CxHy Combustion Analysis")
                    }
                }
                
                NavigationLink(destination: SpectraView()) {
                    HStack {
                        Image(systemName: "sunrise.fill")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("CxHyOz Combustion Analysis")
                    }
                }
                
                NavigationLink(destination: QTheoryView()) {
                    HStack {
                        Image(systemName: "circle.grid.cross")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Quantum Theory")
                    }
                }
                
                NavigationLink(destination: WaveParticleView()) {
                    HStack {
                        Image(systemName: "dot.radiowaves.right")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Wave-Particle Duality")
                    }
                }
                
                NavigationLink(destination: WaveNNodeView()) {
                    HStack {
                        Image(systemName: "waveform.and.magnifyingglass")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("The Wave-Function and Nodes")
                    }
                }
                
                NavigationLink(destination: QuantaNumView()) {
                    HStack {
                        Image(systemName: "123.rectangle")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Quantum Numbers")
                    }
                }
                
                NavigationLink(destination: ElConfigNoteView()) {
                    HStack {
                        Image(systemName: "rectangle.and.pencil.and.ellipsis")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Electron Configuration")
                    }
                }
                
                NavigationLink(destination: PeriodicityView()) {
                    HStack {
                        Image(systemName: "lines.measurement.horizontal")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Periodicity")
                    }
                }
                
                NavigationLink(destination: IonNAffinityView()) {
                    HStack {
                        Image(systemName: "tray.and.arrow.up")
                            .frame(height: 40)
                            .scaleEffect(1.1)
                        Text("Ionization and Electron Affinity")
                    }
                }
                
            }
            .navigationTitle("Adv Chemistry Notes")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
