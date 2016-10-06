//
//  Kuholsagata.swift
//  Cuisina
//
//  Created by Imergex on 10/6/16.
//  Copyright © 2016 Imergex. All rights reserved.
//

import UIKit

class kuholsaGata: UIViewController {
    
    @IBOutlet weak var salesValue: UILabel!
    @IBOutlet weak var segmentControl: ADVSegmentedControl!
    @IBOutlet weak var descriptionView: UIView!
    @IBOutlet weak var contactView: UIView!
    @IBOutlet weak var ratingView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //to show up description first
        descriptionView.hidden = false
        contactView.hidden = true
        ratingView.hidden = true
        
        
        //MARK -> SETUP FOR SEGMENT CONTROL
        segmentControl.items = ["Description", "Reviews", "Contact"]
        segmentControl.font = UIFont(name: "Arial", size: 12)
        segmentControl.borderColor = UIColor(white: 0, alpha: 0)
        segmentControl.selectedIndex = 0
        segmentControl.addTarget(self, action: #selector(kuholsaGata.segmentValueChanged(_:)), forControlEvents: .ValueChanged)
    }
    
    func segmentValueChanged(sender: AnyObject?){
        //MARK -> SWITCHING VIEWS (Simple hide the containe view method)
        if segmentControl.selectedIndex == 0 {
            descriptionView.hidden = false
            contactView.hidden = true
            ratingView.hidden = true
            
        }else if segmentControl.selectedIndex == 1{
            descriptionView.hidden = true
            contactView.hidden = true
            ratingView.hidden = false
        }else{
            descriptionView.hidden = true
            contactView.hidden = false
            ratingView.hidden = true
        }
    }
    
    @IBAction func availabilityButton(sender: AnyObject) {
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK -> to make statusbar color white :D
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
}
