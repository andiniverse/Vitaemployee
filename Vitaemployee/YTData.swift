//
//  YTData.swift
//  Vitaemployee
//
//  Created by Andini Malavika on 25/05/24.
//

import Foundation
import WebKit

struct Video: UIViewRepresentable {
    let videoID: String
    func makeUIView(context: Context) -> some WKWebView {
        return WKWebView()
        
    }
    
}
