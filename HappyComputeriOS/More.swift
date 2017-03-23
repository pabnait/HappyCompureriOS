//
//  More.swift
//  HappyComputeriOS
//
//  Created by Mazharul on 3/23/17.
//  Copyright © 2017 Mazharul. All rights reserved.
//

import UIKit

class More: UITableViewController {
    
    var MoreOption = ["Find Customer","Find Provider","Active User", "User Request","Blance"].sorted()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

            }



    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return MoreOption.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MoreCell", for: indexPath) as! MoreCell
        
        
        cell.NameLabel.text! = MoreOption[indexPath.row]
        

        

        return cell
    }

}
