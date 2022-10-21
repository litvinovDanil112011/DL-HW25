//
//  InfoPersonViewController.swift
//  DL-HW25
//
//  Created by Daniil Litvinov on 11.09.2022.
//

import UIKit
import SnapKit

class InfoPersonViewController: UIViewController {
     
    var card: Card? {
        didSet {
            nameInfoLabel.text = card?.name
            setNameInfoLabel.text = card?.setName
            artistInfoLabel.text = card?.artist
        }
    }
    
     let nameInfoLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: Metric.sizeTextLabel)
        label.textColor = .systemBlue
        label.textAlignment = .center
        return label
    }()
    
     let setNameInfoLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: Metric.sizeTextLabel)
        label.textColor = .systemBlue
        label.textAlignment = .center
        return label
    }()
    
     let artistInfoLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: Metric.sizeTextLabel)
        label.textColor = .systemBlue
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayuot()
        setupView()
        view.backgroundColor = .systemGray6
    }
    
    private func setupLayuot() {
        view.addSubview(nameInfoLabel)
        view.addSubview(setNameInfoLabel)
        view.addSubview(artistInfoLabel)
    }
    
    private func setupView() {
 
        nameInfoLabel.snp.makeConstraints { make in
            make.top.equalTo(view.center)
            make.left.equalTo(view).offset(Metric.indentImage)
            make.right.equalTo(view).offset( -Metric.indentImage)
        }
        setNameInfoLabel.snp.makeConstraints { make in
            make.top.equalTo(nameInfoLabel).offset(Metric.indentViewsInfo)
            make.left.equalTo(view).offset(Metric.indentImage)
            make.right.equalTo(view).offset( -Metric.indentImage)
        }
        artistInfoLabel.snp.makeConstraints { make in
            make.top.equalTo(setNameInfoLabel).offset(Metric.indentViewsInfo)
            make.left.equalTo(view).offset(Metric.indentImage)
            make.right.equalTo(view).offset( -Metric.indentImage)
        }
    }
}

