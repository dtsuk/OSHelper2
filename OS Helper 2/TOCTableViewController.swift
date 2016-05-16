//
//  TOCTableViewController.swift
//  OS Helper 2
//
//  Created by Alan Brooks on 5/2/16.
//  Copyright © 2016 Chips & Ink. All rights reserved.
//

import UIKit

// var TOCEntries = [codeDescription]()
var TOCEntries = [String]()
var passVal    = String()

class TOCTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
/*        TOCEntries = [
            codeDescription(code: "B37-04", description: "insufficient space/extents on current volume and no additional volumes available"),
            codeDescription(code: "B37-08", description: "VTOC Conversion routine failed"),
            codeDescription(code: "B14", description: "PDS directory full at CLOSE"),
            codeDescription(code: "B37-0C", description: "too many open datasets on device"),
            codeDescription(code: "D37-04", description: "no secondary space specified"),
            codeDescription(code: "E37-04", description: "no more volumes specified"),
            codeDescription(code: "E37-08", description: "no space available on new volume"),
            codeDescription(code: "E37-0C", description: "DADSM exit rejected extend"),
            codeDescription(code: "837-08", description: "Tape dataset requires gt 5 volumes"),
            codeDescription(code: "IEC070I 203-204", description: "No secondary space specified"),
            codeDescription(code: "IEC070I 104-034", description: "Max extents or max RBA limit reached"),
            codeDescription(code: "IEC070I 104-204", description: "VSAM - Insufficient space on current volume and no additional volumes avaialable, or max extents reached"),
            codeDescription(code: "DSNT408I, SQLCODE–904, 00D70025", description: "Insufficient space to create a DB2 tablespace"),
            codeDescription(code: "00D70014", description: "Insufficient space to extend a DB2 tablespace")
  */
        
        TOCEntries = ["Common Out-Of-Space Error Codes",
            "DASD Device Information",
            "Tape Label Processing",
            "EXPDT Conventions",
            "Volume Mounting and Usage",
            "Mount Volume on Unit",
            "Blocksizes and Capacities",
            "Dataset Limits",
            "DFSMSdss Information",
            "FDRABR Information",
            "DFSMShsm Information",
            "TSO Commands for DFSMShsm",
            "Useful Console Commands",
            "RACF Information",
            "VSAM / IDCAMS Information",
            "Automatic Class Selection Variables",
            "Dataset Naming Conventions",
            "DFSMShsm Tape Dataset Naming Convention",
            "SYS1.PARMLIB members",
            "APAR Status Codes",
            "APAR Resolution Codes",
            "PTF Closing Codes",
            "ACC/SRS Allocation and Error-Prevention Rules",
            "General Purpose Register",
            "Julian Perpetual Calendar - Non-Leap Years",
            "Julian Perpetual Calendar - Leap Years",
            "EBCDIC–to–Hex Character Conversion Chart",
            "DTS Products"
        ]
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

 /*   override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
 */
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return TOCEntries.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)

        // Configure the cell...

        // here's how we'd do it with a simple struct
//        var TOCEntry : codeDescription
//        TOCEntry = TOCEntries[indexPath.row]
//        cell.textLabel?.text = TOCEntry.code
//        cell.detailTextLabel?.text = TOCEntry.description
        
        cell.textLabel?.text = TOCEntries[indexPath.row]

        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        cell.textLabel?.text = TOCEntries[indexPath.row]
        passVal = TOCEntries[indexPath.row]
        performSegueWithIdentifier ("showDetail", sender: self)
        
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

//    if let destVC = segue.destinationViewController as? SecondViewController {
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            let svc = segue.destinationViewController as! simpleViewController
            svc.toPass = passVal
            
        }
    }
    
}
