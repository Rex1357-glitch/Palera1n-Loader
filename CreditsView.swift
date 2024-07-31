//
// CreditsView.swift
//
// Created by Rex on 31.07.24
//
 
import SwiftUI

struct CreditsView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Special Thanks:")
                    .font(.headline)
                    .padding(.top)
                
                Text("""
                staturnz
                kok3shidoll
                Tom
                Nebula
                Nathan
                Lakhan Lothiyi
                """)
                
                Text("Thank you:")
                    .font(.headline)
                    .padding(.top)
                
                Text("""
                checkrain
                libimobiledevice
                Procursus-Bootstrap
                Evelyn-ElleKit
                singner-Substitute
                Amy While-Sileo
                Zebra Team-Zebra
                Irasnow-purepkg
                ора334-cfprefs hook
                tihmstar- ibinit v1
                raspberry-Odysseyn1x
                asinethO-Checkn1x
                Alexia-Contributions
                """)
            }
            .padding()
        }
        .navigationTitle("Credits")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}