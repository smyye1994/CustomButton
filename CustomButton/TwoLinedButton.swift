//
//  TwoLinedButton.swift
//  CustomButton
//
//  Created by Sümeyye Kılıçoğlu on 8.09.2022.
//

import UIKit
struct TwoLinedButtonViewModel {
    let primaryText: String
    let secondaryText: String
}
final class TwoLinedButton: UIButton {
    public let primaryLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.textAlignment = .center
        label.textColor = .white
        label.font = .systemFont(ofSize: 18, weight: .semibold)
        return label
    }()
    public let secondaryLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.textAlignment = .center
        label.textColor = .white
        label.font = .systemFont(ofSize: 18, weight: .regular)
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(primaryLabel)
        addSubview(secondaryLabel)
        clipsToBounds = true
        layer.cornerRadius = 8
        layer.borderWidth = 1
        layer.borderColor = UIColor.secondarySystemBackground.cgColor
        backgroundColor = .systemGreen
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func configure(with viewModel: TwoLinedButtonViewModel) {
        primaryLabel.text = viewModel.primaryText
        secondaryLabel.text = viewModel.secondaryText
    }
    
    func configure2(primaryText: String, secondaryText: String) {
        primaryLabel.text = primaryText
        secondaryLabel.text = secondaryText
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        primaryLabel.frame = CGRect(x: 5, y: 0, width: frame.size.width-10, height: frame.size.height/2)
        secondaryLabel.frame = CGRect(x: 5, y: frame.size.height/2, width: frame.size.width-10, height: frame.size.height/2)
    }
}
