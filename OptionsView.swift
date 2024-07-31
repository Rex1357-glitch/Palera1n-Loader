//
// OptionsView.swift
//
// Created by Rex on 30.07.24
//
 
import SwiftUI

struct OptionsView: View {
    @State private var rebootAfterRestore = true
    @State private var showPasswordPrompt = true

    var body: some View {
        List {
            Section(header: Text("GENERAL")) {
                NavigationLink(destination: AboutView()) {
                    HStack {
                        Image(systemName: "scroll")
                            .foregroundColor(.gray)
                        Text("About")
                    }
                }
                NavigationLink(destination: UtilitiesView()) {
                    HStack {
                        Image(systemName: "square.stack.3d.down.right")
                            .foregroundColor(.gray)
                        Text("Utilities")
                    }
                }
            }
            
            Section(header: Text("DOWNLOAD")) {
                NavigationLink(destination: ChangeDownloadURLView()) {
                    Text("Change Download URL")
                        .foregroundColor(.blue)
                }
            }
            
            Section(header: Text("OPTIONS")) {
                Toggle("Reboot after Restore", isOn: $rebootAfterRestore)
                Toggle("Show Password Prompt", isOn: $showPasswordPrompt)
            }
            
            Section(header: Text("LANGUAGE")) {
                NavigationLink(destination: LanguageView()) {
                    HStack {
                        Image(systemName: "t.bubble")
                            .foregroundColor(.gray)
                        Text("Language")
                    }
                }
            }
            
            Section(header: Text("CREDITS")) {
                NavigationLink(destination: CreditsView()) {
                    HStack {
                        Image(systemName: "person.3.fill")
                            .foregroundColor(.gray)
                        Text("Credits")
                    }
                }
            }
        }
        .listStyle(GroupedListStyle())
        .navigationTitle("Options")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct OptionsView_Previews: PreviewProvider {
    static var previews: some View {
        OptionsView()
    }
}