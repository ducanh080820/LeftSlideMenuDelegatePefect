//
//  ContainerViewController.swift
//  LeftSlideMenuDelegatePefect
//
//  Created by Duc Anh on 11/15/18.
//  Copyright © 2018 Duc Anh. All rights reserved.
//

import UIKit



class ContainerViewController: UIViewController, MasterViewControllerDelegate {
    

    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var loadingC: NSLayoutConstraint!
    @IBOutlet weak var coverButton: UIButton!
    
    var masterVC: MasterViewController?
    var leftSlideMenuVC: LeftSlideMenuViewController?
    
    
    var isSlideMenuOpen: Bool = false {
        didSet {
            if isSlideMenuOpen {
                print(isSlideMenuOpen)
                loadingC.constant = 0
                coverButton.isHidden = false
            } else {
                print(isSlideMenuOpen)
                loadingC.constant = -(UIScreen.main.bounds.width)*2/3
                coverButton.isHidden = true
            }
            UIView.animate(withDuration: 0.35) {
                self.view.layoutIfNeeded()
            }
        }
    }

    func openSlideMenu() {
        isSlideMenuOpen = !isSlideMenuOpen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        isSlideMenuOpen = false
        masterVC?.delegate = self
        leftSlideMenuVC?.delegate = masterVC
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func click(_ sender: UIButton) {
        openSlideMenu()
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier ?? "" {
        case "masterViewController":
            if let navigation = segue.destination as? UINavigationController {
                masterVC = navigation.topViewController as? MasterViewController
            }
        case "leftSlideMenu":
            leftSlideMenuVC = segue.destination as? LeftSlideMenuViewController
        default:
            break
        }
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
