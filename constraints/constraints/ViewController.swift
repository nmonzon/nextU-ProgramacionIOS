//
//  ViewController.swift
//  constraints
//
//  Created by Integro on 13/02/17.
//  Copyright © 2017 nextu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nextuLabel: UILabel!
    @IBOutlet weak var nextuLogo: UIImageView!
    @IBOutlet weak var enterButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        disableAutoResizing()
        addTitleLabelConstraint()
        addLogoConstraint()
        addButtonConstraint()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func disableAutoResizing() {
        nextuLabel.translatesAutoresizingMaskIntoConstraints = false
        nextuLogo.translatesAutoresizingMaskIntoConstraints = false
        enterButton.translatesAutoresizingMaskIntoConstraints = false
    }

    func addTitleLabelConstraint(){
        let leftConstraint = NSLayoutConstraint(item: self.nextuLabel, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1.0, constant: 8.0)
        let topConstraint = NSLayoutConstraint(item: self.nextuLabel, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 8.0)
        let rightConstraint = NSLayoutConstraint(item: self.nextuLabel, attribute: .right, relatedBy: .equal, toItem: self.view, attribute: .right, multiplier: 1.0, constant: 8.0)
        let heightConstraint = NSLayoutConstraint(item: self.nextuLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 30.0)
        
        self.view.addConstraint(leftConstraint)
        self.view.addConstraint(topConstraint)
        self.view.addConstraint(rightConstraint)
        self.view.addConstraint(heightConstraint)
    }
    
    func addLogoConstraint(){
        let horizontalCenterConstraint = NSLayoutConstraint(item: self.nextuLogo, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0)
        let verticalCenterConstraint = NSLayoutConstraint(item: self.nextuLogo, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1.0, constant: 0)
        let heightConstraint = NSLayoutConstraint(item: self.nextuLogo, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 150)
        let widthConstraint = NSLayoutConstraint(item: self.nextuLogo, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 250)
        
        self.view.addConstraint(horizontalCenterConstraint)
        self.view.addConstraint(verticalCenterConstraint)
        self.view.addConstraint(heightConstraint)
        self.view.addConstraint(widthConstraint)
    }
    
    func addButtonConstraint(){
        let leftConstraint = NSLayoutConstraint(item: self.enterButton, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1.0, constant: 0)
        let rightConstraint = NSLayoutConstraint(item: self.enterButton, attribute: .right, relatedBy: .equal, toItem: self.view, attribute: .right, multiplier: 1.0, constant: 0)
        let bottomConstraint = NSLayoutConstraint(item: self.enterButton, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1.0, constant: 0)
        let heightConstraint = NSLayoutConstraint(item: self.enterButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 50)
        
        self.view.addConstraint(leftConstraint)
        self.view.addConstraint(rightConstraint)
        self.view.addConstraint(heightConstraint)
        self.view.addConstraint(bottomConstraint)
    }
}

