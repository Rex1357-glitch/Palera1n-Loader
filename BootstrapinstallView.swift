//
// BootstrapinstallView.swift
//
// Created by Rex on 30.07.24
//
 
import SwiftUI

struct BootstrapInstallView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack(spacing: 20) {
            Button(action: {
                // Add your action for Bootstrap Install
                print("Bootstrap Install tapped")
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Bootstrap Install (curruntly unavailible)")
                    .foregroundColor(.blue)
            }

            Button(action: {
                // Add your action for Cancel
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Cancel (recommendet)")
                    .foregroundColor(.blue)
            }
        }
        .padding()
    }
}

struct BootstrapInstallView_Previews: PreviewProvider {
    static var previews: some View {
        BootstrapInstallView()
    }
}