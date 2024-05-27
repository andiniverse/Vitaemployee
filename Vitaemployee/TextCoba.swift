//
//  TextCoba.swift
//  Vitaemployee
//
//  Created by Andini Malavika on 25/05/24.
//

import SwiftUI

struct TextCoba: View {
    let content: String
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Text(content)
                    NavigationLink(destination: Accuracy().navigationBarBackButtonHidden(true)) {
                                        Rectangle()
                                            .frame(width: 350, height: 60)
                                            .foregroundColor(Color(red: 0.1, green: 0.1, blue: 0.7))
                                            .cornerRadius(35)
                                            .overlay(
                                                Text("Check accuracy →")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                                                    .bold()
                                            )
                                    }
                }
                .padding(.top, 55)
            }
            .navigationTitle("Text Detail")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
}

#Preview {
    TextCoba(content: String())
}
