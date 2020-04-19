//
//  MyTableViewController.swift
//  w8Tables1
//
//  Created by Sherwin on 2020-03-02.
//  Copyright © 2020 Sherwin. All rights reserved.
//

import UIKit

class MyTableViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    var listData: Array<String> = []
    








    override func viewDidLoad() {
        super.viewDidLoad()
        listData=["jays","rap","leafs","Marlies","FC"]
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listData.count
        
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tablecell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .default,
                                                                                               reuseIdentifier: "cell")
    tablecell.textLabel!.text = listData[indexPath.row]
        tablecell.accessoryType = .disclosureIndicator
    
    return tablecell
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let more = UITableViewRowAction(style: .normal, title: "More") { (action, index) in
            print ("More Button Tab")
        }
        
        
        
        more.backgroundColor = .lightGray
        let favourrite = UITableViewRowAction(style: .normal, title: "favourite") { (action, index) in
            print ("Favourite button tab")
        }
        favourrite.backgroundColor = .orange
        
        let share = UITableViewRowAction(style: .normal, title: "Share") { (action, index) in
            print ("share button tab")
            
        }
        share.backgroundColor = .red
        return [share,favourrite,more]
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let modify = UIContextualAction(style: .normal, title: "modify") { (action, view,sucess) in
        print ("modify tabeed")
            sucess(true)
        }
        modify.backgroundColor = .yellow
        
        
        return UISwipeActionsConfiguration(actions: [modify])
        
    }
    
}
