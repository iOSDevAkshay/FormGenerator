//
//  Utility.swift
//  FormGenerator
//
//  Created by Akshay on 20/08/22.
//

import UIKit

class Utility: NSObject {

    static let shared = Utility()
    
    let darkGrey96 =  UIColor(red: 96/255, green: 96/255, blue: 96/255, alpha: 1)
    let darkGrey128 =  UIColor(red: 128/255, green: 128/255, blue: 128/255, alpha: 1)
    let navyBlue =  UIColor(red: 0/255, green: 51/255, blue: 102/255, alpha: 1)
    
    func addGradientToView(view: UIView) {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [
            UIColor(red: 224/255, green: 224/255, blue: 224/255, alpha: 1).cgColor,
            UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1).cgColor
        ]
        gradient.startPoint = CGPoint(x:0, y:0)
        gradient.endPoint = CGPoint(x:1, y:1)
        view.layer.addSublayer(gradient)
    }
    
}



extension UIViewController {
    
    @objc func hideKeyboardWhenTap() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
