//
//  ViewController.swift
//  CustomButton
//
//  Created by Sümeyye Kılıçoğlu on 8.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let twoLinedButton = TwoLinedButton(frame: CGRect(x: 0, y: 0, width: 300, height: 55))
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setData(buttonModel: TwoLinedButtonViewModel(
            primaryText: "Start Free Trial",
            secondaryText: "3 days free, then $1.99/mo."))
       
        setData2(primaryText: "Start Free Trial",
                 secondaryText: "3 days free, then $1.99/mo.")
        view.addSubview(twoLinedButton)
        twoLinedButton.center = view.center
        twoLinedButton.primaryLabel.text = "Start Free Trial"
        
        
        
        
        let iconTextButton = IconTextButton(frame: CGRect(x: (view.frame.size.width-300)/2, y: 60, width: 300, height: 55))
        view.addSubview(iconTextButton)
        iconTextButton.configure(with: IconTextButtonViewModel(
            text: "Book Flight",
            image: UIImage(systemName: "airplane"),
            backgroundColor: .link))
        
    }

    func setData(buttonModel: TwoLinedButtonViewModel) {
        twoLinedButton.configure(with: buttonModel)
        
    }
    func setData2(primaryText: String, secondaryText: String) {
        twoLinedButton.configure2(primaryText: primaryText, secondaryText: secondaryText)
        
    }


}

