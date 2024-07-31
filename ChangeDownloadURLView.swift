//
// ChangeDownloadURLView.swift
//
// Created by Rex on 31.07.24
//
 
import SwiftUI

struct ChangeDownloadURLView: View {
    @State private var downloadURL: String = ""

    var body: some View {
        Form {
            Section(header: Text("Change Download URL")) {
                TextField("Enter new URL", text: $downloadURL)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            Button(action: {
                // Handle save action here
                print("New URL: \(downloadURL)")
            }) {
                Text("Save")
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            .buttonStyle(DefaultButtonStyle())
        }
        .navigationTitle("Change Download URL")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ChangeDownloadURLView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeDownloadURLView()
    }
}