//
//  MainScreenViewController.swift
//  DL-HW25
//
//  Created by Daniil Litvinov on 11.09.2022.
//

import UIKit
import SnapKit
import Alamofire

class MainScreenViewController: UIViewController {
    
    var cardsArray = [Card]()
    
    let tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .plain)
        table.register(Cell.self, forCellReuseIdentifier: Cell.id)
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "List of Heroes"
        getData()
        setupLayuot()
        setupView()
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
        return cardsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cell.id, for: indexPath) as? Cell else { return UITableViewCell() }
        cell.nameLabel.text = cardsArray[indexPath.row].name
        cell.setLabel.text = cardsArray[indexPath.row].artist
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let distantions = InfoPersonViewController()
        //        self.present(distantions, animated: true)
        navigationController?.pushViewController(distantions, animated: true)
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let distantion = segue.destination as? InfoPersonViewController {
            distantion.cardsInfo = cardsArray[tableView.indexPathForSelectedRow!.row]
        }
    }
}

