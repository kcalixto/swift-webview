//
//  ContentView.swift
//  swift-webview
//
//  Created by Kaua Calixto on 08/07/23.
//

import SwiftUI
import WebKit
import Foundation

struct ContentView: View {
    @State private var showWebView = false
    private let urlString: String = ProcessInfo.processInfo.environment["URL"] ?? "static.luna.app.br";
    var body: some View {
        GeometryReader {
            geometry in
            VStack(spacing: 40){
                WebView(url: URL(string: urlString)!).frame(height: geometry.size.height)
            }
        }
    }
}

struct WebView: UIViewRepresentable {
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
