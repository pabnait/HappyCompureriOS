//
//  Due Blance.swift
//  HappyComputeriOS
//
//  Created by Mazharul on 3/13/17.
//  Copyright © 2017 Mazharul. All rights reserved.
//

import UIKit

class Due_Blance: UITableViewController {
    
    var DueBlanceUrl = "http://khidirpurdegreecollege.edu.bd/DueBlance.php"

    var DueCustmomerName  = [String]()
    
      var DueCustomerAmmount = [String]()
      var DueCustomerCell = [String]()
      var DueCustomerInvoice = [String]()
    
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        
        DueBlancedownloadFromURL()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(addTapped))
        
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
        cell.DueCustomerCellLabel.text! = DueCustomerCell[indexPath.row]
        cell.DueCustomerAmmountLabel.text! = DueCustomerAmmount[indexPath.row]
        cell.DueCustomerInvoiceLabel.text! = DueCustomerInvoice[indexPath.row]
       
        
        
        
        
        
        
        return cell
    }
    
    func DueBlancedownloadFromURL ()
    {
        let url = NSURL(string: DueBlanceUrl)
        URLSession.shared.dataTask(with: (url as? URL)!, completionHandler: {(data, response, error) -> Void in
            if let jsonObj = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? NSDictionary {
                if let actorArray = jsonObj!.value(forKey: "Result") as? NSArray {
                    for actor in actorArray{
                        if let actorDict = actor as? NSDictionary {
                            if let name = actorDict.value(forKey: "Name") {
                                self.DueCustmomerName.append(name as! String)
                            }
                            if let Cell = actorDict.value(forKey: "Cell") {
                                self.DueCustomerCell.append(Cell as! String)
                            }
                            if let Invoice = actorDict.value(forKey: "Invoice") {
                                self.DueCustomerInvoice.append(Invoice as! String)
                            }
                            if let Ammount = actorDict.value(forKey: "Ammount") {
                                self.DueCustomerAmmount.append(Ammount as! String)
                                
                            }
                            
                        }
                    }
                }
                OperationQueue.main.addOperation({
                    self.tableView.reloadData()
                })
            }
        }).resume()
        
        
        
    }
    
    

    
    
    
    
    func addTapped(){
        
        
        tableView.reloadData()
    }
    
    
}
