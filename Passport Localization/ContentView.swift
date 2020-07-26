//
//  ContentView.swift
//  Passport Localization
//
//  Created by MR.Robot 💀 on 26/07/2020.
//  Copyright © 2020 Joselson Dias. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let languagePrefix = Bundle.main.preferredLocalizations.first?.prefix(2)
    var body: some View {
        
        VStack {

            if languagePrefix == "en" {
                Image("english-flag")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120)
                    .cornerRadius(10)
            }
            
            if languagePrefix == "pt" {
                Image("portuguese-flag")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120)
                    .cornerRadius(10)
            }
            
            if languagePrefix == "fr" {
                Image("french-flag")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120)
                    .cornerRadius(10)
            }
            
            Spacer()

            VStack {
                Text("HelloString")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.system(size: 29.0))
                
                Text("LanguageHelp")
                    .font(.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 29)
                    .padding(.horizontal, 19)
            }
            .frame(width: 280, height: 210)
            .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
            .cornerRadius(13)
            .shadow(radius: 10)
        }
        .frame(height: 330)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["en", "pt", "fr"], id: \.self) { localeIdentifier in
        ContentView()
            .environment(\.locale, .init(identifier: localeIdentifier))
            .previewDisplayName(localeIdentifier)
        }
    }
}
