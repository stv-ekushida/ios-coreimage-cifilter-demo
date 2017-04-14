//
//  FilterListViewController.swift
//  ios-filter-demo
//
//  Created by Eiji Kushida on 2017/04/14.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//

import UIKit

protocol FilterDelegate: class {
    func selected(name: String)
}

class FilterListViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    weak var delegate: FilterDelegate?
    fileprivate var items: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    private func setup() {
        items = FilterString.patterns()
        tableView.dataSource = self
        tableView.delegate = self
    }
}

// MARK: - UITableViewDataSource
extension FilterListViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }


    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
}

// MARK: - UITableViewDelegate
extension FilterListViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        delegate?.selected(name: items[indexPath.row])
        dismiss(animated: true, completion: nil)
    }
}

