//
//  InfoPersonViewController.swift
//  DL-HW25
//
//  Created by Daniil Litvinov on 11.09.2022.
//

import UIKit
import SnapKit

class InfoPersonViewController: UIViewController {
    
    private lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .red
        return image
    }()
    
    private lazy var nameInfoLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 40)
        label.textColor = .black
        label.text = "nameInfoLabel"
        return label
    }()
    
    private lazy var setNameInfoLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 30)
        label.textColor = .black
        label.text = "setNameInfoLabel"
        return label
    }()
    
    private lazy var artistInfoLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20)
        label.textColor = .black
        label.text = "artistInfoLabel"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayuot()
        setupView()
        view.backgroundColor = .orange
        
    }
    
    private func setupLayuot() {
        view.addSubview(imageView)
        view.addSubview(nameInfoLabel)
        view.addSubview(setNameInfoLabel)
        view.addSubview(artistInfoLabel)
    }
    
    private func setupView() {
        imageView.snp.makeConstraints { make in
            make.left.equalTo(view).offset(Metric.indentImage)
            make.right.equalTo(view).offset( -Metric.indentImage)
            make.top.equalTo(view).offset(90)
            make.height.equalTo(100)
        }
        nameInfoLabel.snp.makeConstraints { make in
            make.bottom.equalTo(imageView).inset(-Metric.indentViewsInfo)
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
