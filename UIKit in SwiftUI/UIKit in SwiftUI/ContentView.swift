//
//  ContentView.swift
//  UIKit in SwiftUI
//
//  Created by Barbara Beatrice on 24/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
     WebView(url: URL(string: "https://www.notion.so/appledeveloperacademyunina/B-Artifact-1-a4f678182b614c0c928abb1361f3ca61")!)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
