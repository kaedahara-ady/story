//
//  RandomUserViewController.swift
//  uiKitTestPrjct1
//
//  Created by OverPowerPWND Keeper83 on 21/9/22.
//

//import UIKit
//
//class RandomUserViewController: UIViewController {
//        
//    let userImageView: UIImageView = {
//        let userImage = UIImageView()
//        userImage.translatesAutoresizingMaskIntoConstraints = false
//        
//        return userImage
//    }()
//    
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        view.addSubview(userImageView)
//        
//        userImageView.backgroundColor = .red
//    
//        userImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        userImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
//        userImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
//        userImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -400).isActive = true
//        userImageView.layer.cornerRadius = self.userImageView.bounds.height / 2
//        userImageView.clipsToBounds = true
//        
//    }
//}
