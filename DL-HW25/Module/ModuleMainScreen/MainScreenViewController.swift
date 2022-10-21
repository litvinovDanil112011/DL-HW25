//
//  MainScreenViewController.swift
//  DL-HW25
//
//  Created by Daniil Litvinov on 11.09.2022.
//

import UIKit
import SnapKit

class MainScreenViewController: UIViewController {
    
    var cardsArray = [Card]()
    let networkManager = NetworkManager()
    
    private lazy var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .plain)
        table.dataSource = self
        table.delegate = self
        table.register(Cell.self, forCellReuseIdentifier: Cell.identifier)
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "List of Heroes"
        setupView()
        getData()
    }
    
    private func setupView() {
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.top.bottom.left.right.equalTo(view)
        }
    }
    
    private func getData() {
        networkManager.fetchData { cards in
            self.cardsArray = cards
            self.tableView.reloadData()
        }
    }
}

extension MainScreenViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cardsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cell.identifier, for: indexPath) as? Cell else { return UITableViewCell() }
        cell.nameLabel.text = cardsArray[indexPath.row].name
        cell.setLabel.text = cardsArray[indexPath.row].artist
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let distantions = InfoPersonViewController()
        distantions.card = cardsArray[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
        navigationController?.pushViewController(distantions, animated: true)
    }
}


