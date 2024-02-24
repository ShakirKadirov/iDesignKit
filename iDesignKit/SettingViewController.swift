//
//  SettingViewController.swift
//  iDesignKit
//
//  Created by Shakir Kadirov on 23.02.2024.
//

import UIKit

class SettingViewController: UIViewController {
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Personal Settings"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var descriptionLabel = {
        let label = UILabel()
        label.text = "Customize the app according to your preferences and manage personal data."
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var mainView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = .systemGray4
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settings"
        view.backgroundColor = .white
        
        view.addSubview(titleLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(mainView)
        setConstraint()
    }
    
    private func ofsetView() -> UIView{
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        return view
    }
    
    private func setConstraint(){
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            mainView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 20),
            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            mainView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
        ])
    }
}
