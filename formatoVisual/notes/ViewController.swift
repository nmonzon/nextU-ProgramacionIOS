//
//  ViewController.swift
//  notes
//
//  Created by Integro on 13/02/17.
//  Copyright © 2017 nextu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var descriptionText: UITextView!
    @IBOutlet weak var cartButton: UIButton!
    @IBOutlet weak var wishButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.disableAutoResizing()
        // Do any additional setup after loading the view, typically from a nib.
        
        let views : [String: Any] = ["titleLabel": titleLabel, "productImage": productImage, "descriptionText": descriptionText, "cartButton":cartButton, "wishButton":wishButton]
        
        var constraints: [NSLayoutConstraint] = []
        
        let titleVerticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|-[titleLabel(50)]", options: [], metrics: nil, views: views)
        
        let titleHorizontalConstraint = NSLayoutConstraint.constraints(withVisualFormat: "H:|-[titleLabel]-|", options: [], metrics: nil, views: views)
        
        let imageVerticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:[titleLabel]-[productImage(180@750)]", options: [], metrics: nil, views: views)
        
        let imageHorizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-[productImage]-|", options: [NSLayoutFormatOptions.alignAllCenterX], metrics: nil, views: views)
        
        let descVerticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:[productImage]-[descriptionText]", options: [], metrics: nil, views: views)
        
        let descHorizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-[descriptionText]-|", options: [], metrics: nil, views: views)
        
        let cartVerticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:[descriptionText]-[cartButton]-0-[wishButton]", options: [], metrics: nil, views: views)
        
        let cartHorizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[cartButton]-0-|", options: [], metrics: nil, views: views)
        
        let wishVerticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:[cartButton]-0-[wishButton]-0-|", options: [], metrics: nil, views: views)
        
        let wishHorizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[wishButton]-0-|", options: [], metrics: nil, views: views)
        
        constraints.append(contentsOf: titleVerticalConstraints)
        constraints.append(contentsOf: titleHorizontalConstraint)
        constraints.append(contentsOf: imageVerticalConstraints)
        constraints.append(contentsOf: imageHorizontalConstraints)
        constraints.append(contentsOf: descVerticalConstraints)
        constraints.append(contentsOf: descHorizontalConstraints)
        constraints.append(contentsOf: cartVerticalConstraints)
        constraints.append(contentsOf: cartHorizontalConstraints)
        constraints.append(contentsOf: wishVerticalConstraints)
        constraints.append(contentsOf: wishHorizontalConstraints)
        
        NSLayoutConstraint.activate(constraints)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func disableAutoResizing(){
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.productImage.translatesAutoresizingMaskIntoConstraints = false
        self.descriptionText.translatesAutoresizingMaskIntoConstraints = false
        self.cartButton.translatesAutoresizingMaskIntoConstraints = false
        self.wishButton.translatesAutoresizingMaskIntoConstraints = false
        
    }


}

