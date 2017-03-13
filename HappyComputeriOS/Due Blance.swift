//
//  Due Blance.swift
//  HappyComputeriOS
//
//  Created by Mazharul on 3/13/17.
//  Copyright © 2017 Mazharul. All rights reserved.
//

import UIKit

class Due_Blance: UITableViewController {

    var DueCustmomerName  = ["Carrick","Brock","Benedict","David","Carter","Abbott","Abbott","Alexander","Cyril","Messi","Alexander"]
    
    
      var DueCustomerAmmount = ["345","345","546","457","234","546","896","345","Cyril","7","465"]
    
    var DueCustomerCell = ["0174131671","01711726384","01744342345","0713254332","01788124364","01734534534","01945353636","345","01941534346","0175442353","0183454632"]
    
    var DueCustomerInvoice = ["3465","3465","546","5647","2634","5466","8696","3645","6756","7567","4665"]
    
    
    
    override func viewDidLoad() {
        
        self.title = "Due Blance History"
        super.viewDidLoad()
        
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
        return DueCustmomerName.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DueCell", for: indexPath) as! DueBlanceCell
        
        cell.DueCoustomerNameLabel.text! = DueCustmomerName[indexPath.row]
        cell.DueCustomerAmmountLabel.text! = DueCustomerAmmount[indexPath.row]
        cell.DueCustomerCellLabel.text! = DueCustomerCell[indexPath.row]
        cell.DueCustomerInvoiceLabel.text! = DueCustomerInvoice[indexPath.row]
        
        
        
        
        
        
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
