//
//  CustomView.swift
//  iDesignKit
//
//  Created by Shakir Kadirov on 23.02.2024.
//

import UIKit

class CustomView: UIView {
    
    lazy var topLabel: UILabel = {
        $0.text = "Label"
        $0.textColor = .white
        $0.font = UIFont.boldSystemFont(ofSize: 16)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    lazy var countLabel: UILabel = {
        $0.text = "Number of count"
        $0.textColor = .white
        $0.font = UIFont.systemFont(ofSize: 12)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .brown
        addSubview(topLabel)
        addSubview(countLabel)
        setConstraints()
    }
    
    private func setConstraints(){
        NSLayoutConstraint.activate([
            topLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            topLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            topLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 16),
            
            
            countLabel.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 8),
            countLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            countLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 16)
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
