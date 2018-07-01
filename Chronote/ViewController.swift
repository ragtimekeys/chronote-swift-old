//
//  ViewController.swift
//  Chronote
//
//  Created by Jimmy Granger on 6/16/18.
//  Copyright © 2018 80protons. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        view.backgroundColor = .white
        let myLabel = UILabel(frame: CGRect(x: 30, y: 20, width: 100, height: 40))
        myLabel.text = "chronote sucks"
        view.addSubview(myLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

