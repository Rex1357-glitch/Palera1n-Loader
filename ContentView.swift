//
// ContentView.swift
//
// Created by Rex on 30.07.24
//
 
import SwiftUI

struct ContentView: View {
    @State private var showBootstrapSheet = false

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("INSTALL")) {
                    Button(action: {
                        showBootstrapSheet.toggle()
                    }) {
                        HStack {
                            Image(systemName: "shippingbox")
                                .foregroundColor(.blue)
                            Text("Sileo")
                        }
                    }
                    
                    Button(action: {
                        showBootstrapSheet.toggle()
                    }) {
                        HStack {
                            Image(systemName: "shippingbox")
                                .foregroundColor(.gray)
                            Text("Zebra")
                        }
                    }
                }
                
                Section(header: Text("TROUBLESHOOT")) {
                    NavigationLink(destination: OptionsView()) {
                        HStack {
                            Image(systemName: "gearshape.fill")
                                .foregroundColor(.gray)
                            Text("Options")
                        }
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("palera1n")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image(systemName: "drop.fill")
                            .foregroundColor(.blue)
                        Text("palera1n")
                            .font(.headline)
                    }
                }
            }
            .sheet(isPresented: $showBootstrapSheet) {
                BootstrapInstallView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}