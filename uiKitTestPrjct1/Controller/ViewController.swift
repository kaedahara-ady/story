//
//  ViewController.swift
//  uiKitTestPrjct1
//
//  Created by OverPowerPWND Keeper83 on 15/9/22.
//

import UIKit

class ViewController: UIViewController, RandomManagerDelegate {
    
    let userImageView: UIImageView = {
        let userImage = UIImageView()
        userImage.translatesAutoresizingMaskIntoConstraints = false
        userImage.contentMode = .scaleAspectFit
        
        
        return userImage
    }()
    
    let descriptionText: UILabel = {
        let userDescription = UILabel()
        userDescription.translatesAutoresizingMaskIntoConstraints = false
        userDescription.font = .boldSystemFont(ofSize: 18)
        userDescription.textAlignment = .center
        
        return userDescription
    }()
    
    let userEmailLabel: UILabel = {
        let userEmail = UILabel()
        userEmail.translatesAutoresizingMaskIntoConstraints = false
        userEmail.font = .boldSystemFont(ofSize: 18)
        userEmail.textAlignment = .center
        
        return userEmail
    }()
    
    lazy var fetchButton: UIButton = {
       
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Next user", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        
        
        return button
    }()
    
    @objc func buttonAction() {
        randomManager.delegate = self
        randomManager.fetchRandom(userGender: descriptionText.text ?? "")

    }
    
    
    var randomManager = RandomManger()
    
    func didUpdateRandomUser(_ randomManager: RandomManger, random: RandomModel) {
        DispatchQueue.main.async {
            self.descriptionText.text = "random.userGender"
            if self.descriptionText.text == "female" {
                self.userImageView.backgroundColor = .systemPink
            } else if self.descriptionText.text == "male" {
                self.userImageView.backgroundColor = .blue
            } else {
                self.userImageView.backgroundColor = .gray
            }
            print("random.userGender")
        }
    }
    
    func didFailWithError(error: Error) {
        print(error)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(descriptionText)
        view.addSubview(fetchButton)
        view.addSubview(userEmailLabel)
        
        setupLayout()
        
    }
    
    private func setupLayout() {
        
        let topContainerView = UIView()
//        topContainerView.backgroundColor = .cyan
        view.addSubview(topContainerView)
        topContainerView.translatesAutoresizingMaskIntoConstraints = false
        topContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        topContainerView.addSubview(userImageView)
        
        userImageView.centerXAnchor.constraint(equalTo: topContainerView.centerXAnchor).isActive = true
        userImageView.centerYAnchor.constraint(equalTo: topContainerView.centerYAnchor).isActive = true
        userImageView.heightAnchor.constraint(equalTo: topContainerView.heightAnchor, multiplier: 0.5).isActive = true
        userImageView.widthAnchor.constraint(equalTo: topContainerView.widthAnchor, multiplier: 0.5).isActive = true
        
        descriptionText.topAnchor.constraint(equalTo: topContainerView.bottomAnchor).isActive = true
        descriptionText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80).isActive = true
        descriptionText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80).isActive = true
        descriptionText.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200).isActive = true
        
        userEmailLabel.topAnchor.constraint(equalTo: descriptionText.bottomAnchor, constant: 30).isActive = true
        userEmailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80).isActive = true
        userEmailLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80).isActive = true
        userEmailLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150).isActive = true
        
        fetchButton.topAnchor.constraint(equalTo: descriptionText.bottomAnchor, constant: 50).isActive = true
        fetchButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80).isActive = true
        fetchButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80).isActive = true
        fetchButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
    }
}



