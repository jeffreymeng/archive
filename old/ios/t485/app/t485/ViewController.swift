//
//  ViewController.swift
//  webview
//
//  Created by Jeffrey Meng on 7/11/16.
//  Copyright © 2016 Jeffrey Meng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        let webLink: String = "https://www.youtube.com/embed/oP0WR2Ql9yI"
        let width = 300
        let height = 200
        let frame = 10
        let Code:NSString = "<iframe width=\(width) height=\(height) src=\(webLink) frameborder=\(frame) allowfullscreen></iframe>"
         */
        
        let Code:NSString = "<iframe width='100%' height='100%' style='border: 0; position:absolute; top:0; left:0; right:0; bottom:0; width:100%; height:100%' src='https://t485.org/offline/index.html' frameborder='10' allowfullscreen></iframe>"

        self.webview.loadHTMLString(Code as String, baseURL: nil)
        // Do any additional setup after loading the view,f
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

