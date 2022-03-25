//
//  WebView.swift
//  UIKit in SwiftUI
//
//  Created by Barbara Beatrice on 24/03/22.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {

//    The type of view to present
    typealias UIViewType = WKWebView
    
//    Var of URL type
    var url : URL
    
//    Create an instance of the WKWebView
    let webView = WKWebView()

//    Func that creates the view and returns it
    func makeUIView(context: Context) -> WKWebView {
        return webView
    }
    
//    Func that updates the view
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}


