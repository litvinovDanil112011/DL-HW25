//
//  Cell.swift
//  DL-HW25
//
//  Created by Daniil Litvinov on 11.09.2022.
//

import UIKit
import SnapKit

class Cell: UITableViewCell {
    
    static let identifier = "Cell"
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.tintColor = .black
        label.textAlignment = .left
        return label
    }()
    
    let setLabel: UILabel = {
        let label = UILabel()
        label.tintColor = .black
        label.textAlignment = .left
        label.textColor = .systemGray2
        label.font = label.font.withSize(Metric.sizeTextLabel)
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
        contentView.addSubview(setLabel)
    }
    
    private func setupView() {
        nameLabel.snp.makeConstraints { make in
            make.centerY.equalTo(contentView).offset(-Metric.paddingYCell)
            make.left.equalTo(contentView).offset(Metric.indentNames)
        }
        
        setLabel.snp.makeConstraints { make in
            make.centerY.equalTo(contentView).offset(Metric.paddingYCell)
            make.left.equalTo(contentView).offset(Metric.indentNames)
        }
        
    }
}
