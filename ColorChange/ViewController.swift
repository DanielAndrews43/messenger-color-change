//
//  ViewController.swift
//  ColorChange
//
//  Created by Daniel Andrews on 2/5/19.
//  Copyright © 2019 Daniel Andrews. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView()
        tableView.frame = view.frame
        tableView.register(ColorTableViewCell.self, forCellReuseIdentifier: "myCell")
        tableView.dataSource = self
        tableView.delegate = self
        
        view.addSubview(tableView)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath as IndexPath) as! ColorTableViewCell
        
        cell.awakeFromNib()
        cell.label.text = String(indexPath.row)
        
        return cell
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        for cell in tableView.visibleCells as! [ColorTableViewCell] {
            let absFrame = tableView.convert(cell.frame, to: self.view)
            let alpha = max(min(absFrame.maxY / view.frame.maxY, 1), 0.1)
            cell.label.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: alpha)
        }
    }
}
