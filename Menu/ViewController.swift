//
//  ViewController.swift
//  Menu
//
//  Created by THANIKANTI VAMSI KRISHNA on 1/23/20.
//  Copyright © 2020 THANIKANTI VAMSI KRISHNA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var menuShow = false
    
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var menuView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuView.layer.shadowOpacity = 1
        menuView.layer.shadowRadius = 5
        menuView.layer.shadowColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
    }

    @IBAction func openMenu(_ sender: Any)
    {
        if menuShow
        {
            leadingConstraint.constant = -160
            UIView.animate(withDuration: 0.2, animations: {
                self.view.layoutIfNeeded()
            })
        }else{
            leadingConstraint.constant = 0
            UIView.animate(withDuration: 0.2, animations: {
                self.view.layoutIfNeeded()
            })
        }
        menuShow = !menuShow
        
    }
    
}

