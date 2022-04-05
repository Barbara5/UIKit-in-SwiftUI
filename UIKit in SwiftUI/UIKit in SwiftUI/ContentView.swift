//
//  ContentView.swift
//  UIKit in SwiftUI
//
//  Created by Barbara Beatrice on 24/03/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
//        Call the WebView and add the url of the page you want to show
     WebView(url: URL(string: "https://cdn0.tnwcdn.com/wp-content/blogs.dir/1/files/2016/03/giphy-2.gif")!)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
