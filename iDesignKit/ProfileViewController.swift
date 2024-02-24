//
//  ViewController.swift
//  iDesignKit
//
//  Created by Shakir Kadirov on 23.02.2024.
//

import UIKit

class ProfileViewController: UIViewController {
    
    lazy var profileImageView: UIImageView = {
        $0.image = UIImage(named: "profileImage.jpg")
        $0.contentMode = .scaleAspectFill
        $0.layer.cornerRadius = 75
        $0.clipsToBounds = true
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIImageView())
    
    lazy var firstNameLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    lazy var lastNameLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    lazy var settingsButton: UIButton = {
        let button = UIButton()
        button.setTitle("Setting", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(self, action: #selector(settingButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var middleStackView: UIStackView = {
        $0.axis = .horizontal
        $0.alignment = .fill
        $0.distribution = .fillEqually
        $0.spacing = 8
        
        let friendsView = createCustomView(title: "Friends", count: "100")
        let followersView = createCustomView(title: "Followers", count: "100")
        let postsView = createCustomView(title: "Posts", count: "200")
        
        $0.addArrangedSubview(friendsView)
        $0.addArrangedSubview(followersView)
        $0.addArrangedSubview(postsView)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())
    
    
    lazy var mainImageView: UIImageView = {
        $0.image = UIImage(named: "mainImage.jpg")
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 20
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIImageView())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(profileImageView)
        view.addSubview(settingsButton)
        view.addSubview(middleStackView)
        view.addSubview(mainImageView)
        setConstraint()
        
    }
    
    private func createCustomView(title: String, count: String) -> CustomView {
         let customView = CustomView()
         customView.layer.cornerRadius = 20
         customView.topLabel.text = title
         customView.countLabel.text = count
         return customView
     }
    
    @objc func settingButtonTapped(_ sender: Any){
        print("settingButtonTapped")
        let vc = SettingViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func setConstraint(){
        NSLayoutConstraint.activate([
            profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profileImageView.heightAnchor.constraint(equalToConstant: 150),
            profileImageView.widthAnchor.constraint(equalToConstant: 150),
            
            settingsButton.heightAnchor.constraint(equalToConstant: 25),
            settingsButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            settingsButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            settingsButton.bottomAnchor.constraint(equalTo: middleStackView.topAnchor, constant: -20),
            
            middleStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            middleStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            middleStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            middleStackView.heightAnchor.constraint(equalToConstant: 100),
            
            mainImageView.topAnchor.constraint(equalTo: middleStackView.bottomAnchor, constant: 10),
            mainImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            mainImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            mainImageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
        ])
    }
}

