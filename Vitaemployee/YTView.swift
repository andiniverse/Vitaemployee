//
//  YTView.swift
//  Vitaemployee
//
//  Created by Andini Malavika on 25/05/24.
//

import SwiftUI
import WebKit

struct YTView: View {
    let ID: String
    var body: some View {
        
        Video(videoID: ID)
            .frame(width: 750, height: 400)
            .cornerRadius(35)
    }
}

#Preview {
    YTView(ID: "")
}

struct Video: UIViewRepresentable {
    let videoID: String
    func makeUIView(context: Context) -> some WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        guard let YoutubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)")
                
        else {return}
        
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: YoutubeURL))
    }
    
}
