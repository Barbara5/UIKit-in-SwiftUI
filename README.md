# UIKit in SwiftUI
> This is a simple project that shows how UIKit can be integrated into SwiftUI.  
> You can find my full article about the integration of both frameworks [here](https://medium.com/@barbarabeatrice95/swiftui-or-uikit-did-you-mean-swiftuikit-6eeb115c5e59).

## Table of Contents
* [General Info](#general-information)
* [Technologies Used](#technologies-used)
* [Create a WebView](#create-a-webview)
* [Usage](#usage)
* [Contact](#contact)

## General Information
I started this project in order to understand how SwiftUI and UIKit can be integrated together to get the best out of both of them. 
In this case, I decided to use a WKWebView, which is part of the WebKit framework and is used to incorporate web content into an app.
This is actually just one of two projects that I worked on, you can find the "SwiftUI in UIKit" part [here](https://github.com/BarbaraBeatrice/SwiftUI-in-UIKit).

## Technologies Used
- macOS - 12.1
- Xcode - 13.3

## Create a WebView

Create a SwiftUIView that will need to conform to the UIVIewRepresentable protocol. 

`struct WebView: UIViewRepresentable { }`

Add The typealias (the kind of View we are creating), in this case a WKWebView.

`typealias UIViewType = WKWebView`

And then the make and the update methods. The first one is called only once and creates the view, while the second one updates it.

```
func makeUIView(context: Context) -> WKWebView { }
func updateUIView(_ uiView: WKWebView, context: Context) { }
```

We will also store the WKWebView into a constant and create a variable of type URL, that we'll use to assign any url we want to the WebView.

```
let webView = WKWebView()
var url : URL
```

In order to create the View, we just have to return the view from the makeUIView() function.

`return webView`

Instead for the updateUIView() we need to load the url that we'll assign to it when we'll call the WebView.

```
let request = URLRequest(url: url)
webView.load(request)
```

## Usage
In order to use this view, you just have to import the file in your project and then call it where you need it. 
Now you just have to pass the url of your desired web page as parameter.

`WebView(url: URL(string: "https://tenor.com/bQ6Vf.gif")!)`

## Contact
Created by [Barbara Beatrice](https://github.com/BarbaraBeatrice)
