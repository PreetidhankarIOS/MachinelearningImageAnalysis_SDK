// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation
import UIKit
import WebKit

public class ClassifyingImagesSDK: WKWebView  {
    
    public init() {
            let webConfiguration = WKWebViewConfiguration()
            webConfiguration.preferences.javaScriptEnabled = true
            super.init(frame: .zero, configuration: webConfiguration)
            self.scrollView.isScrollEnabled = false
            self.isMultipleTouchEnabled = false
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
        }

        @discardableResult
        public func loadView() -> WKNavigation? {
            if let url = URL(string:"https://www.balancerecruitment.com.au/") {
                let req = URLRequest(url: url)
                return super.load(req)
            }
            return nil
        }
    
}
