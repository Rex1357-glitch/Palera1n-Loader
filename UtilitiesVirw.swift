//
// UtilitiesVirw.swift
//
// Created by Rex on 31.07.24
//
 
import SwiftUI

struct UtilitiesView: View {
    var body: some View {
        List {
            Button(action: {
                // Action for Respring
            }) {
                Text("Respring")
            }
            
            Button(action: {
                // Action for UICache
            }) {
                Text("UICache")
            }
            
            Button(action: {
                // Action for Userspace Reboot
            }) {
                Text("Userspace Reboot")
            }
        }
        .navigationTitle("Utilities")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct UtilitiesView_Previews: PreviewProvider {
    static var previews: some View {
        UtilitiesView()
    }
}