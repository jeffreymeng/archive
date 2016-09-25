//
//  ViewController.swift
//  cookbook
//
//  Created by Jeffrey Meng on 7/13/16.
//  Copyright © 2016 Jeffrey Meng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        webView.loadHTMLString("<iframe width='420' height='315' src='https://www.youtube.com/embed/PR0LtAiHzCs' frameborder='0' allowfullscreen></iframe>", baseURL: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

