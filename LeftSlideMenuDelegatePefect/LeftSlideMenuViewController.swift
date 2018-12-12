//
//  LeftSlideMenuViewController.swift
//  LeftSlideMenuDelegatePefect
//
//  Created by Duc Anh on 11/15/18.
//  Copyright © 2018 Duc Anh. All rights reserved.
//

import UIKit

protocol LeftSlideMenuViewControllerDelegate: class {
    func sendingData(data: String)
}

class LeftSlideMenuViewController: UIViewController {

    weak var delegate: LeftSlideMenuViewControllerDelegate?
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendData(_ sender: UIButton) {
        delegate?.sendingData(data: textField.text!)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
