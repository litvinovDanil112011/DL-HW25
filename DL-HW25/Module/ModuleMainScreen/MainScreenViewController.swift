//
//  MainScreenViewController.swift
//  DL-HW25
//
//  Created by Daniil Litvinov on 11.09.2022.
//

import UIKit
import SnapKit

class MainScreenViewController: UIViewController {
    
    let tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(Cell.self, forCellReuseIdentifier: Cell.id)
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayuot()
        setupView()
        
        title = "List of Heroes"
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    private func setupLayuot() {
        view.addSubview(tableView)
    }
    
    private func setupView() {
        tableView.snp.makeConstraints { make in
            make.top.bottom.left.right.equalTo(view)
        }
    }
}

extension MainScreenViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cell.id, for: indexPath) 
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let distantions = InfoPersonViewController()
       // self.present(distantions, animated: true)
        navigationController?.pushViewController(distantions, animated: true)
        tableView.deselectRow(at: indexPath, animated: false)
    }
}
