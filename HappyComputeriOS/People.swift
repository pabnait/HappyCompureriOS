//
//  People.swift
//  HappyComputeriOS
//
//  Created by Mazharul on 3/13/17.
//  Copyright © 2017 Mazharul. All rights reserved.
//

import UIKit

class People: UITableViewController {
    
 
    
    @IBOutlet var PeopleSegment: UISegmentedControl!
    
    
    
    
    
    var CustomerName1 = ["Rana","Tanvir", "Islam", "Abid Hasan", "Aminul Islam","Roton","Zahidul", "Belal", "Ratul", "Jibon"]
    
    
    var CustomerAddress1 = ["Pabna","Miapara", "Debottor", "Dhaka", "Pabna","Tebunia","Beruan", "Miapara", "Atgharia", "Pabna"]
    
    
    
    var CustomerAmmount1 = ["$65","$678", "$568", "$8678", "$778","$789","$768", "$768", "$657", "$89"]
    
    
    var CustomerInvoice1 = ["4435","7678", "5768", "8678", "7478","9789","1268", "7668", "8657", "8789"]
    
    
    var CustomerCell1 = ["0174131671","01711726384","01744342345","0713254332","01788124364","01734534534","01945353636","01941534346","0175442353","0183454632"]
    
    
    
    
    
    

    
    var CustomerName = ["Rana","Tanvir", "Islam", "Abid Hasan", "Aminul Islam","Roton","Zahidul", "Belal", "Ratul", "Jibon"]
    
    
     var CustomerAddress = ["Pabna","Miapara", "Debottor", "Dhaka", "Pabna","Tebunia","Beruan", "Miapara", "Atgharia", "Pabna"]
    
    
    
    var CustomerAmmount = ["$65","$678", "$568", "$8678", "$778","$789","$768", "$768", "$657", "$89"]
    
    
    var CustomerInvoice = ["4435","7678", "5768", "8678", "7478","9789","1268", "7668", "8657", "8789"]
    
    
    var CustomerCell = ["0174131671","01711726384","01744342345","0713254332","01788124364","01734534534","01945353636","01941534346","0175442353","0183454632"]
    
    
    
    
    
    var ProviderName = ["Entaz","Tanvir", "Islam", "Abid Hasan", "Aminul Islam","Roton","Zahidul", "Belal", "Ratul", "Jibon"]
    
    
    var ProviderAddress = ["USA","Miapara", "Debottor", "Dhaka", "Pabna","Tebunia","Beruan", "Miapara", "Atgharia", "Pabna"]
    
    
    
    var ProviderAmmount = ["$100","$678", "$568", "$8678", "$778","$789","$768", "$768", "$657", "$89"]
    
    
    var ProviderInvoice = ["100","7678", "5768", "8678", "7478","9789","1268", "7668", "8657", "8789"]
    
    
    var ProviderCell = ["01731 5533","01711726384","01744342345","0713254332","01788124364","01734534534","01945353636","01941534346","0175442353","0183454632"]
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        return CustomerName.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PeopleCell", for: indexPath) as! PeopleCell

        cell.CustomerNameLabel.text! = CustomerName[indexPath.row]
        cell.CustomerAmmountLabel.text! = CustomerAmmount[indexPath.row]
        cell.CustomerAddressLabel.text! = CustomerAddress[indexPath.row]
        cell.CustomerCellLabel.text! = CustomerCell[indexPath.row]
        cell.CustomerInvoiceLabel.text! = CustomerInvoice[indexPath.row]
        
        
        
        
        

        return cell
    }
   
    @IBAction func OnSegmentButtonClicked(_ sender: Any) {
        
        if PeopleSegment.selectedSegmentIndex == 1{
            
            CustomerName = ProviderName
            CustomerInvoice = ProviderInvoice
            CustomerCell = ProviderCell
            CustomerAmmount = ProviderAmmount
            CustomerAddress = ProviderAddress
            
            self.tableView.reloadData()
            
       
            
            
        }
        
        else if PeopleSegment.selectedSegmentIndex == 0 {
            
            
            CustomerName = CustomerName1
            CustomerInvoice = CustomerInvoice1
            CustomerCell = CustomerCell1
            CustomerAmmount = CustomerAmmount1
            CustomerAddress = CustomerAddress1
            
            self.tableView.reloadData()
            
        }
    }


}
