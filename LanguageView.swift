//
// LanguageView.swift
//
// Created by Rex on 31.07.24
//
 
import SwiftUI

struct LanguageView: View {
    @State private var useSystemLanguage = true

    var body: some View {
        List {
            Toggle("Use System Language", isOn: $useSystemLanguage)
        }
        .listStyle(GroupedListStyle())
        .navigationTitle("Language")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LanguageView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView()
    }
}