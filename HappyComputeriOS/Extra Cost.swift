//
//  Extra Cost.swift
//  HappyComputeriOS
//
//  Created by Mazharul on 3/13/17.
//  Copyright © 2017 Mazharul. All rights reserved.
//

import UIKit

class Extra_Cost: UITableViewController {
    
    var ExtraCostTitle = ["Dinnar","Party Cost", "Banner Cost", "Peole Hire Fee", "Acadamey Cost","Dinnar","Party Cost", "Banner Cost", "Peole Hire Fee", "Acadamey Cost"]
    
     var ExtraCostBy = ["Rana","Tanvir", "Islam", "Abid Hasan", "Aminul Islam","Roton","Zahidul", "Belal", "Ratul", "Jibon"]
    
    
    
     var ExtraCostAmmount = ["$65","$678", "$568", "$8678", "$778","$789","$768", "$768", "$657", "$89"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Extra Cost History"

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return ExtraCostTitle.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExtraCostCell", for: indexPath) as! ExtraCostCell
        
        
        
        cell.ExtraCostTitleLabel.text! = ExtraCostTitle[indexPath.row]
        cell.ExtraCostByLabel.text! = ExtraCostBy[indexPath.row]
        cell.ExtraCostAmmountLabel.text! = ExtraCostAmmount[indexPath.row]
        
        
       
        
        
        

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
