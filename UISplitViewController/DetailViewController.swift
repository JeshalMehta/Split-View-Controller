//
//  DetailViewController.swift
//  UISplitViewController
//
//  Created by Jeshal Mehta on 08/08/16.
//  Copyright © 2016 Jeshal Mehta. All rights reserved.
//

import UIKit


class DetailViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    
    var titleText: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Detail"
        
        self.titleLabel.text = self.titleText
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }
    
}
