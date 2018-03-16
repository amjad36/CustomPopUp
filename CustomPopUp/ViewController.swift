//
//  ViewController.swift
//  CustomPopUp
//
//  Created by Amjad Khan on 16/03/18.
//  Copyright © 2018 HCL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnPopUp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showPopUpButtonPressed(_ sender: Any) {
        
        let popUpView = CustomPopUp()
        popUpView.preferredContentSize = CGSize(width: self.view.frame.size.width - 100, height: 249)
        popUpView.popoverPresentationController?.sourceView = btnPopUp
        popUpView.popoverPresentationController?.sourceRect = CGRect(x: 0, y: 0, width: btnPopUp.bounds.width, height: btnPopUp.bounds.height + 5) // btnPopUp.bounds
        popUpView.popoverPresentationController?.backgroundColor = UIColor.red
        self.present(popUpView, animated: true, completion: nil)
    }
    
}

class CustomPopUp: UIViewController, UIPopoverPresentationControllerDelegate {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.modalPresentationStyle = .popover
        self.popoverPresentationController?.delegate = self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.none
    }
}

