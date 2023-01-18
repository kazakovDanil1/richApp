//
//  MainView.swift
//  RichApp
//
//  Created by Kazakov Danil on 18.01.2023.
//

import UIKit


final class MainView: UIView {
    
     lazy var mainLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "I am Rich"
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textColor = .white
        label.textAlignment = .center

        return label
    }()
    
    private lazy var diamondImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "diamond")
        imageView.frame = CGRect(x: 72, y: 313, width: 270, height: 270)

        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 0.2352941176, green: 0.4745098039, blue: 0.9607843137, alpha: 1)
        addSubview(mainLabel)
        addSubview(diamondImageView)
        layoutSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        NSLayoutConstraint.activate([
            mainLabel.bottomAnchor.constraint(equalTo: diamondImageView.topAnchor, constant: -10),
            mainLabel.leadingAnchor.constraint(equalTo: diamondImageView.leadingAnchor, constant: 10),
            mainLabel.trailingAnchor.constraint(equalTo: diamondImageView.trailingAnchor, constant: -10),
            
        ])
    }
    
}
