//
//  NoteView.swift
//  Chem Resolve
//
//  Created by Thomas Gosvig on 10/28/21.
//

import SwiftUI

struct NoteView: View {
    var body: some View {
        NavigationView {
            List {
                
                Group {
                    
                    NavigationLink(destination: MatterView()) {
                        HStack {
                            Image(systemName: "scalemass")
                                .frame(width: 20.0, height: 40)
                                .scaleEffect(1.1)
                            Text("Properties of Matter")
                        }
                    }
                    
                    NavigationLink(destination: MixtureView()) {
                        HStack {
                            Image(systemName: "hourglass.tophalf.filled")
                                .frame(width: 20.0, height: 40)
                                .scaleEffect(1.1)
                            Text("Mixtures and Solutions")
                        }
                    }
                    
                }
                
                Group {
                    
                    NavigationLink(destination: TheMoleView()) {
                        HStack {
                            Image(systemName: "circle.hexagongrid.circle")
                                .frame(width: 20.0, height: 40)
                                .scaleEffect(1.1)
                            Text("The Mole & Composition")
                        }
                    }
                    
                    NavigationLink(destination: NucleusView()) {
                        HStack {
                            Image(systemName: "atom")
                                .frame(width: 20.0, height: 40)
                                .scaleEffect(1.1)
                            Text("The Atom & the Nucleus")
                        }
                    }
                    
                }
                
                Group {
                    
                    NavigationLink(destination: ElectronView()) {
                        HStack {
                            Image(systemName: "minus.circle")
                                .frame(width: 20.0, height: 40)
                                .scaleEffect(1.1)
                            Text("Electrons")
                        }
                    }
                    
                    NavigationLink(destination: PeriodicTableView()) {
                        HStack {
                            Image(systemName: "tablecells")
                                .frame(width: 20.0, height: 40)
                                .scaleEffect(1.1)
                            Text("The Periodic Table")
                        }
                    }
                    
                }
                
                Group {
                    
                    NavigationLink(destination: IonsView()) {
                        HStack {
                            Image(systemName: "plus.forwardslash.minus")
                                .frame(width: 20.0, height: 40)
                                .scaleEffect(1.1)
                            Text("Ions")
                        }
                    }
                    
                    NavigationLink(destination: PrecipitationView()) {
                        HStack {
                            Image(systemName: "cloud.rain.fill")
                                .frame(width: 20.0, height: 40)
                                .scaleEffect(1.1)
                            Text("Precipitation Reactions")
                        }
                    }
                    
                }
                
                Group {
                    
                    NavigationLink(destination: CompoundsView()) {
                        HStack {
                            Image(systemName: "aqi.medium")
                                .frame(width: 20.0, height: 40)
                                .scaleEffect(1.1)
                            Text("Compounds and Molecules")
                        }
                    }
                    
                    NavigationLink(destination: ChemNomenclatureView()) {
                        HStack {
                            Image(systemName: "textformat.abc")
                                .frame(width: 20.0, height: 40)
                                .scaleEffect(1.0)
                            Text("Chemical Nomenclature")
                        }
                    }
                    
                }
                
                Group {
                    
                    NavigationLink(destination: PeriodicityView()) {
                        HStack {
                            Image(systemName: "lines.measurement.horizontal")
                                .frame(width: 20.0, height: 40)
                                .scaleEffect(1.1)
                            Text("Periodicity")
                        }
                    }
                    
                    NavigationLink(destination: IonNAffinityView()) {
                        HStack {
                            Image(systemName: "tray.and.arrow.up")
                                .frame(width: 20.0, height: 40)
                                .scaleEffect(1.1)
                            Text("Ionization and Electron Affinity")
                        }
                    }
                    
                }
                
                Group {
                    
                    NavigationLink(destination: ElectromagnetView()) {
                        HStack {
                            Image(systemName: "bolt.circle")
                                .frame(width: 20.0, height: 40)
                                .scaleEffect(1.1)
                            Text("Electromagnetism")
                        }
                    }
                    
                    NavigationLink(destination: SpectraView()) {
                        HStack {
                            Image(systemName: "sunrise.fill")
                                .frame(width: 20.0, height: 40)
                                .scaleEffect(1.1)
                            Text("Atomic Spectra")
                        }
                    }
                    
                }
                
                Group {
                    
                    NavigationLink(destination: QTheoryView()) {
                        HStack {
                            Image(systemName: "circle.grid.cross")
                                .frame(width: 20.0, height: 40)
                                .scaleEffect(1.1)
                            Text("Quantum Theory")
                        }
                    }
                    
                    NavigationLink(destination: WaveParticleView()) {
                        HStack {
                            Image(systemName: "dot.radiowaves.right")
                                .frame(width: 20.0, height: 40)
                                .scaleEffect(1.1)
                            Text("Wave-Particle Duality")
                        }
                    }
                    
                }
                
                Group {
                    
                    NavigationLink(destination: WaveNNodeView()) {
                        HStack {
                            Image(systemName: "waveform.and.magnifyingglass")
                                .frame(width: 20.0, height: 40)
                                .scaleEffect(1.1)
                            Text("The Wave-Function and Nodes")
                        }
                    }
                    
                    NavigationLink(destination: QuantaNumView()) {
                        HStack {
                            Image(systemName: "123.rectangle")
                                .frame(width: 20.0, height: 40)
                                .scaleEffect(1.1)
                            Text("Quantum Numbers")
                        }
                    }
                    
                    NavigationLink(destination: ElConfigNoteView()) {
                        HStack {
                            Image(systemName: "rectangle.and.pencil.and.ellipsis")
                                .frame(width: 20.0, height: 40)
                                .scaleEffect(1.1)
                            Text("Electron Configuration")
                        }
                    }
                    
                }
                
                
                
            }
            .navigationTitle("Chemistry Notes")
        }
    }
}









struct NoteView_Previews: PreviewProvider {
    static var previews: some View {
        NoteView()
    }
}
