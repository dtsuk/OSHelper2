//
//  simpleViewController.swift
//  OS Helper 2
//
//  Created by Alan Brooks on 5/11/16.
//  Copyright © 2016 Chips & Ink. All rights reserved.
//

import UIKit

var showDetail: String = ""

class simpleViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    var toPass: String = ""
    
    @IBOutlet weak var detailText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        switch toPass {
            
        case "Common Out-Of-Space Error Codes" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("CommonErrors", ofType: "html")!)))
            
        case "DASD Device Information" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("DASDInfo", ofType: "html")!)))
            
        case "Tape Label Processing" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("TapeLabel", ofType: "html")!)))
            
        case "EXPDT Conventions" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("EXPDTConventions", ofType: "html")!)))
            
        case "Volume Mounting and Usage" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("VolumeMounts", ofType: "html")!)))
            
        case "Mount Volume on Unit" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("MountVolume", ofType: "html")!)))
            
        case "Blocksizes and Capacities" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Blocksizes", ofType: "html")!)))
            
        case "Dataset Limits" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("DatasetLimits", ofType: "html")!)))
            
        case "DFSMSdss Information" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("DFSMSdssInfo", ofType: "html")!)))
            
        case "FDRABR Information" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("FDRABRInfo", ofType: "html")!)))
            
        case "DFSMShsm Information" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("DFSMShsmInfo", ofType: "html")!)))
            
        case "TSO Commands for DFSMShsm" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("TSOCommsForDFSMShsm", ofType: "html")!)))
            
        case "Useful Console Commands" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("ConsoleCommands", ofType: "html")!)))
            
        case "RACF Information" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("RACFInfo", ofType: "html")!)))
            
        case "VSAM / IDCAMS Information" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("VSAM_IDCAMSInfo", ofType: "html")!)))
            
        case "Automatic Class Selection Variables" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("AutoClass", ofType: "html")!)))
            
        case "Dataset Naming Conventions" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("DatasetNames", ofType: "html")!)))
            
        case "DFSMShsm Tape Dataset Naming Convention" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("DFSMShsmTapeNames", ofType: "html")!)))
            
        case "SYS1.PARMLIB members" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("SYS1_ParmlibMems", ofType: "html")!)))
            
        case "APAR Status Codes" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("APARStatus", ofType: "html")!)))
            
        case "APAR Resolution Codes" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("APARResolution", ofType: "html")!)))
            
        case "PTF Closing Codes" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("PTFClosingCodes", ofType: "html")!)))
            
        case "ACC/SRS Allocation and Error-Prevention Rules" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("ACCSRSAllocation", ofType: "html")!)))
            
        case "General Purpose Register" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("GeneralPurposeRegister", ofType: "html")!)))
            
        case "Julian Perpetual Calendar - Non-Leap Years" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("JulianNonLeap", ofType: "html")!)))
            
        case "Julian Perpetual Calendar - Leap Years" :
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("JulianLeap", ofType: "html")!)))
            
        case "EBCDIC–to–Hex Character Conversion Chart":
                
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("EBCDIC2Hex", ofType: "html")!)))

        case "DTS Products":
            
            webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Products", ofType: "html")!)))
            
        default :
            detailText.text = toPass
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
