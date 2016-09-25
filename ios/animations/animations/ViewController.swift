//
//  ViewController.swift
//  animations
//
//  Created by Jeffrey Meng on 7/14/16.
//  Copyright © 2016 Jeffrey Meng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 1
    var imgcount = 16
    @IBOutlet weak var animatedImage: UIImageView!
    
    @IBAction func updateButton(sender: AnyObject) {
        if counter == imgcount {
            counter = 1
        }
        else {
            counter += 1
        }
        animatedImage.image = UIImage(named: "frame\(counter).png")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

