//
//  ViewController.swift
//  MakeItHappen
//
//  Created by CSC214 Instructor on 7/20/18.
//  Copyright © 2018 University of Rochester. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var faveImage: UIImageView!
    @IBOutlet weak var stackViewXConstraint: NSLayoutConstraint!
    
   
    
    @IBOutlet weak var Switch: UIStackView!
    @IBOutlet weak var makeitHappen: UIButton!
    @IBOutlet weak var makeItHappenBtnBottomConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var favoriteImageView: UIImageView!
   
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration:10.0,delay:1.0,animations:{
            self.favoriteImageView.alpha=1.0
        })
        UIView.animate(withDuration:5.0,delay:2.0,animations:{
            self.makeitHappen.alpha=1.0
            self.makeitHappen.frame.origin.y-=40
        })
        
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
self.favoriteImageView.alpha=0
self.makeitHappen.alpha=0
        self.Switch.alpha=0
        UIView.animate(withDuration: 5.0, delay:3.0, animations: {
            self.Switch.alpha=1.0
            self.Switch.frame.origin.x -= 500
        })        //self.makeItHappenBtnBottomConstraint.constant = -200
    }
    
    
    // MARK - Utility
    
    
    @IBAction func onMakeItHappen(_ sender: UIButton) {
       
        
        
        UIView.animate(withDuration: 2.0, animations: {()-> Void in
           self.view.backgroundColor=UIColor.purple
            
        }) {(Bool)-> Void in
        UIView.animate(withDuration: 2.0, animations: {()-> Void in
            self.view.backgroundColor=UIColor.brown}, completion:{(Bool)-> Void in
            
        })
    }
        let a=favoriteImageView.bounds
        UIView.animate(withDuration: 1, animations: {()-> Void in
            self.favoriteImageView.transform=CGAffineTransform(scaleX:2,y:2)
            
            // self.favoriteImageView.frame.size.width=a.width+a.width/2
            //self.favoriteImageView.frame.size.height=a.height+a.height/2
        }) {(Bool)->Void in
            UIView.animate(withDuration: 1, animations: {()-> Void in
                self.favoriteImageView.transform=CGAffineTransform(scaleX:1,y:1)
                //self.favoriteImageView.frame.size.width=a.width
                //self.favoriteImageView.frame.size.height=a.height
            })
        
        
        
        }
        
        
        
    }
}

