//
//  Cell.swift
//  DL-HW25
//
//  Created by Daniil Litvinov on 11.09.2022.
//

import UIKit
import SnapKit

class Cell: UITableViewCell {
    
    static let id = "Cell"
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.tintColor = .black
        label.textAlignment = .left
        return label
    }()
    
    let setNameLabel: UILabel = {
        let label = UILabel()
        label.tintColor = .systemGray
        label.textAlignment = .right
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupLayuot()
        setupView()
        
        accessoryType = .disclosureIndicator
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayuot() {
        contentView.addSubview(nameLabel)
        contentView.addSubview(setNameLabel)

    }
    
    private func setupView() {
        nameLabel.snp.makeConstraints { make in
            make.centerY.equalTo(contentView)
            make.left.equalTo(contentView).offset(Metric.indentNames)
        }
        
        setNameLabel.snp.makeConstraints { make in
            make.centerY.equalTo(contentView)
            make.right.equalTo(contentView).offset(Metric.indentNames)
        }
    }
}
