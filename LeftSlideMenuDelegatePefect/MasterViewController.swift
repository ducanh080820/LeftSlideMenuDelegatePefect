//
//  ViewController.swift
//  LeftSlideMenuDelegatePefect
//
//  Created by Duc Anh on 11/15/18.
//  Copyright © 2018 Duc Anh. All rights reserved.
//

import UIKit

protocol MasterViewControllerDelegate: class {
    func openSlideMenu()
}

class MasterViewController: UIViewController, LeftSlideMenuViewControllerDelegate {
    
    weak var delegate: MasterViewControllerDelegate?
    
    func sendingData(data: String) {
        nameText.text = data
        delegate?.openSlideMenu()
    }
    
    @IBOutlet weak var nameText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnMenu(_ sender: UIBarButtonItem) {
        delegate?.openSlideMenu()
    }
    

}

