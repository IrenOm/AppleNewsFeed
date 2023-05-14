//
//  WebViewController.swift
//  AppleNewsFeed
//
//  Created by irena.omelana on 13/05/2023.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    var urlString: String = String()
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Web"
        guard let url = URL(string: urlString) else {return}
        
        webView.load(URLRequest(url: url))
        
        // Do any additional setup after loading the view.
    }
    
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("Start nav")
        
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("stop nav")
    }

   
    

}
