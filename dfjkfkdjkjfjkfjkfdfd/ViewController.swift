//
//  ViewController.swift
//  dfjkfkdjkjfjkfjkfdfd
//
//  Created by Mac on 5/12/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "22") as! HomeVC
        
        vc.loadViewIfNeeded()
        let res = vc.children[0] as! NestedVC
        res.bb.addTarget(self, action: #selector(ppp), for: .touchUpInside)
        self.addChild(res)
        
        res.view.frame = self.view.frame
        
        self.view.addSubview(res.view)
        
        res.willMove(toParent: self)
        
        print(res)
    
    }

    
    @objc func ppp () {
        
        print("ghghhd")
    }

}




class NestedVC: UIViewController {
    
    @IBOutlet weak var bb: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}




class HomeVC: UIViewController {
    @IBOutlet weak var bbbb: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}

