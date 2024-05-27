//
//  ContentView.swift
//  Vitaemployee
//
//  Created by Andini Malavika on 24/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showScannerSheet = false
    @State private var texts: [ScanData] = []
    @State private var isShown: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                ScrollView {
                    VStack {
                        Rectangle() //Big Rectangle
                            .cornerRadius(35)
                            .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                            .frame(width: 750, height: 300)
                            .padding(.bottom, 650)
                            .overlay (
                                Image("logotp")
                                    .resizable()
                                    .frame(width: 35, height: 40)
                                    .offset(x: -325, y:-430)
                            )
                            .overlay (
                                Text("Vitaemployee")
                                    .font(.system(size: 80))
                                    .offset(x: -90, y: -355)
                                    .bold()
                                    .kerning(2)
                                    .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            )
                            .overlay (
                                Text(".")
                                    .font(.system(size: 120))
                                    .offset(x: 183, y: -367)
                                    .bold()
                                    .foregroundColor(Color(red: 0.1, green: 0.1, blue: 0.7))
                            )
                        
                            .overlay (
                                Text("We check the quality of your ATS CV")
                                    .font(.system(size: 20))
                                    .offset(x: -110, y: -270)
                                    .kerning(1)
                                    .foregroundColor(Color(red: 0.7, green: 0.7, blue: 0.7))
                            )
                        
                            .overlay (
                                Text("by the job vacancy available. 🫶")
                                    .font(.system(size: 20))
                                    .offset(x: -130, y: -240)
                                    .kerning(1)
                                    .foregroundColor(Color(red: 0.7, green: 0.7, blue: 0.7))
                            )
                        
                        Rectangle() //Small Blue Rectangle
                            .foregroundColor(Color(red: 0.1, green: 0.1, blue: 0.7))
                            .frame(width: 750, height: 70)
                            .cornerRadius(35)
                            .offset(y: -640)
                            .overlay(
                                Text("Vitaemployee     Vitaemployee     Vitaemployee     Vitaemployee")
                                    .font(.system(size: 25))
                                    .bold()
                                    .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                                    .offset(y: -640)
                            )
                        
                        Text("Career Path")
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .bold()
                            .kerning(1.5)
                            .font(.system(size: 50))
                            .offset(x:-15, y: -600)
                        
                        Text(".")
                            .font(.system(size: 100))
                            .offset(x: 140, y: -706)
                            .bold()
                            .foregroundColor(Color(red: 0.1, green: 0.1, blue: 0.7))
                        
                        //Camera Button
                        createButton(title: "            Product Management", color: Color(red: 0.95, green: 0.95, blue: 0.95), padding: .init(top: -765, leading: 0, bottom: 0, trailing: 0))
                        createButton(title: "     Software Engineer", color: Color(red: 0.95, green: 0.95, blue: 0.95), padding: .init(top: -635, leading: 0, bottom: 0, trailing: 0))
                        createButton(title: "UI/UX Designer", color: Color(red: 0.95, green: 0.95, blue: 0.95), padding: .init(top: -505, leading: 0, bottom: 0, trailing: 0))
                        
                        //Tutorial Video
                        Text("Tutorial Video")
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .bold()
                            .kerning(1.5)
                            .font(.system(size: 50))
                            .offset(x:-15, y: -345)
                        
                        Text(".")
                            .font(.system(size: 100))
                            .offset(x: 165, y: -452)
                            .bold()
                            .foregroundColor(Color(red: 0.1, green: 0.1, blue: 0.7))
                        
                        YTView(ID: "6ZsE9WgPrjY")
                            .offset(y: -505)
                        
                        //Text Result
                        if !texts.isEmpty {
                            List {
                                ForEach(texts) { text in
                                    NavigationLink(
                                        destination: TextCoba(content: text.content),
                                        label: {
                                            Text(text.content).lineLimit(1)
                                        }
                                    )
                                }
                            }
                            .frame(height: 100)
                            .offset(y: -450)
                        } //Fold Text Result
                        
                    } //Fold VStack
                    .padding(.top, 40) //Padding Layout All
                    
                } //Fold Scrollview
                
            } //Fold ZStack
            
        } //Fold NavigationStack
        
    } //Fold View
    
    private func makeScannerView() -> ScannerView {
        ScannerView(completion: {textPerPage in
            if let outputText = textPerPage?.joined(separator: "\n").trimmingCharacters(in: .whitespacesAndNewlines) {
                let newScanData = ScanData(content: outputText)
                self.texts.append(newScanData)
            }
            self.showScannerSheet = false
        })
    }
    
    private func createButton(title: String, color: Color, padding: EdgeInsets) -> some View {
        Button(action: { self.showScannerSheet = true }) {
            Rectangle()
                .foregroundColor(Color(red: 0.1, green: 0.1, blue: 0.7))
                .frame(width: 750, height: 120)
                .cornerRadius(35)
                .overlay(
                    Text(title)
                        .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                        .font(.system(size: 30))
                        .offset(x: -200)
                )
                .overlay (
                Text(".")
                    .font(.system(size: 140))
                    .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                    .offset(x: -330, y: -42)
                )
        }
        .sheet(isPresented: $showScannerSheet, content: {
            makeScannerView()
        })
        .padding(padding)
    }
}

#Preview {
    ContentView()
}
