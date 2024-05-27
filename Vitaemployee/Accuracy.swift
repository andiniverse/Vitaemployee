//
//  Accuracy.swift
//  Vitaemployee
//
//  Created by Andini Malavika on 26/05/24.
//

import SwiftUI

struct Accuracy: View {
    @State var random = Int.random(in: 50...100)
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Rectangle() //Small Blue Rectangle
                        .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                        .frame(width: 750, height: 160)
                        .cornerRadius(35)
                        .overlay (
                            Text("Your ATS CV result is ready!")
                                .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                                .font(.system(size: 25))
                                .bold()
                                .offset(x: -180, y: -33)
                        )
                        .overlay (
                            Text("Your ATS CV has been compared to company job vacancy description.")
                                .foregroundColor(Color(red: 0.7, green: 0.7, blue: 0.7))
                                .font(.system(size: 20))
                                .kerning(0.5)
                                .offset(x: -12, y: 11)
                        )
                    
                        .overlay (
                            Text("See the section below for the result 👇")
                                .foregroundColor(Color(red: 0.7, green: 0.7, blue: 0.7))
                                .font(.system(size: 20))
                                .kerning(0.5)
                                .offset(x: -155, y: 40)
                        )
                    
                    Rectangle()
                        .foregroundColor(Color(red: 0.1, green: 0.1, blue: 0.7))
                        .frame(width: 750, height: 200)
                        .cornerRadius(35)
                        .offset(y: 15)
                        .overlay (
                            Text("\(random)% Accurate")
                                .font(.system(size: 90))
                                .offset(x: -50, y: 15)
                                .bold()
                                .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                        )
                        .overlay (
                            Text(".")
                                .font(.system(size: 120))
                                .offset(x: 260, y: 5)
                                .bold()
                                .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                        )
                    
                        .overlay (
                            Text("Suggestion")
                                .font(.system(size: 30))
                                .bold()
                                .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                                .offset(x: -280, y: 200)
                        )
                    
                    if (50...75).contains(random)  {
                        Text("Your ATS CV still needs improvement. But, chill out!")
                            .font(.system(size: 25))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .offset(x: -70, y: 130)
                        
                        Text("It's never too late, right? starting from tidying up your ATS CV")
                            .font(.system(size: 25))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .offset(x: -10, y: 137)
                        
                        Text("layout first. You can make it more profesional by the font,")
                            .font(.system(size: 25))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .offset(x: -38, y: 144)
                        
                        Text("bullet point, and tone of voice.")
                            .font(.system(size: 25))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .offset(x: -186, y: 151)
                        
                        Text("You also can pay attention to your ATS CV keyword.")
                            .font(.system(size: 25))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .offset(x: -69, y: 190)
                        
                        Text("(ex. use active keyword such as executing, gaining, etc)")
                            .font(.system(size: 25))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .offset(x: -48, y: 197)
                        
                        Text("to show up your contribution for your job. Also, add some")
                            .font(.system(size: 25))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .offset(x: -38, y: 204)
                        
                        Text("impact-result method to measure your completed job.")
                            .font(.system(size: 25))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .offset(x: -55, y: 211)
                        
                    }
                    
                    else if (76...89).contains(random) {
                        Text("Your ATS CV is awesome! Here's a few tips and tricks before")
                            .font(.system(size: 25))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .offset(x: -18, y: 130)
                        
                        Text("sending your CV to your dream company. First, make sure")
                            .font(.system(size: 25))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .offset(x: -32, y: 137)
                        
                        Text("your contact attached can be reach out by HR. Next one,")
                            .font(.system(size: 25))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .offset(x: -36, y: 144)
                        
                        Text("you can divide the skill into categories like soft and hardskill.")
                            .font(.system(size: 25))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .offset(x: -15, y: 151)
                        
                        Text("The good news is, you dont need to worry about layout!")
                            .font(.system(size: 25))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .offset(x: -44, y: 190)
                        
                        Text("your ATS CV layout is already great, you can keep focusing on")
                            .font(.system(size: 25))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .offset(x: -7, y: 197)
                        
                        Text("active keyword that describes your capabilities even better.")
                            .font(.system(size: 25))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .offset(x: -21, y: 204)
                        
                        Text("Remember to keep improve your career-life too!")
                            .font(.system(size: 25))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .offset(x: -83, y: 211)
                    
                    }
                    
                    else {
                        Text("Perfect is your middle name! Your ATS CV is above average")
                            .font(.system(size: 25))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .offset(x: -23, y: 130)
                        
                        Text("and you ready to jump into the job industry ASAP.")
                            .font(.system(size: 25))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .offset(x: -78, y: 137)
                        
                        Text("While applying, keep an eye to your LinkedIn profile, because")
                            .font(.system(size: 25))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .offset(x: -15, y: 144)
                        
                        Text("maybe HR can reach out you first on LinkedIn.")
                            .font(.system(size: 25))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .offset(x: -97, y: 151)
                        
                        Text("The only suggestion is you can start to find a job in the")
                            .font(.system(size: 25))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .offset(x: -51, y: 190)
                        
                        Text("job portal like Glints, Kalibr, Jobstreet, etc. You also can do")
                            .font(.system(size: 25))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .offset(x: -28, y: 197)
                        
                        Text("some research about your dream company culture, salary,")
                            .font(.system(size: 25))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .offset(x: -32, y: 204)
                        
                        Text("and other things that will support you career-knowledge.")
                            .font(.system(size: 25))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .offset(x: -37, y: 211)
                        }
                    
                    
                    NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)) {
                        Rectangle()
                            .foregroundColor(Color(red: 0.1, green: 0.1, blue: 0.7))
                            .frame(width: 750, height: 75)
                            .cornerRadius(35)
                            .overlay(
                                Text("Back to main page →")
                                    .font(.system(size: 25))
                                    .bold()
                                    .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                            )
                    }
                    .offset(y: 370)
                    
                }
                .padding(.top, 40)
            }
        }
    }
}

#Preview {
    Accuracy()
}
