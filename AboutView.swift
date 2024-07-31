//
// AboutView.swift
//
// Created by Rex on 30.07.24
//
 
import SwiftUI

struct AboutView: View {
    var body: some View {
        List {
            Section(header: Text("PALERA1N")) {
                HStack {
                    Text("Type")
                    Spacer()
                    Text("Rootless")
                        .foregroundColor(.gray)
                }
                HStack {
                    Text("Flags")
                    Spacer()
                    Text("0x0")
                        .foregroundColor(.gray)
                }
            }
            
            Section(header: Text("IPHONE")) {
                HStack {
                    Text("Version")
                    Spacer()
                    Text("16.5.1")
                        .foregroundColor(.gray)
                }
                HStack {
                    Text("Architecture")
                    Spacer()
                    Text("arm64e")
                        .foregroundColor(.gray)
                }
                HStack {
                    Text("Kernel")
                    Spacer()
                    Text("22.5.0")
                        .foregroundColor(.gray)
                }
                HStack {
                    Text("CF")
                    Spacer()
                    Text("1977")
                        .foregroundColor(.gray)
                }
            }
            
            Section(header: Text("BOOT-ARGS")) {
                // Add any relevant boot arguments here if needed
            }
        }
        .listStyle(GroupedListStyle())
        .navigationTitle("About")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}