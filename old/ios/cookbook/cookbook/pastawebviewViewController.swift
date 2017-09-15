//
//  pastawebviewViewController.swift
//  cookbook
//
//  Created by Jeffrey Meng on 7/13/16.
//  Copyright © 2016 Jeffrey Meng. All rights reserved.
//

import UIKit

class pastawebviewViewController: UIViewController {
    @IBOutlet weak internal var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        webView.loadHTMLString("<iframe width='420' height='315' src='https://www.youtube.com/embed/PNVohsjBiZI' frameborder='0' allowfullscreen></iframe>", baseURL: nil)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
