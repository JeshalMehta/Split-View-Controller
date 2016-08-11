//
//  ViewController.swift
//  UISplitViewController
//
//  Created by Jeshal Mehta on 08/08/16.
//  Copyright © 2016 Jeshal Mehta. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController, UISplitViewControllerDelegate {

    var array: NSMutableArray = NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.array.addObject("iphone")
        self.array.addObject("Apple Watch")
        self.array.addObject("Mac")
        self.array.addObject("iPad")

        self.tableView.reloadData()
        self.splitViewController?.delegate = self
        
        self.splitViewController?.preferredDisplayMode = UISplitViewControllerDisplayMode.AllVisible
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    
    }
 
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.array.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = self.array.objectAtIndex(indexPath.row) as? String

        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.performSegueWithIdentifier("showDetail", sender: self)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let index = self.tableView.indexPathForSelectedRow! as NSIndexPath
        
        let nav = segue.destinationViewController as! UINavigationController
        
        let vc = nav.viewControllers[0] as! DetailViewController
        
        vc.titleText = self.array.objectAtIndex(index.row) as! String
        
        self.tableView.deselectRowAtIndexPath(index, animated: true)
        
    }
    
    func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController: UIViewController, ontoPrimaryViewController primaryViewController: UIViewController) -> Bool {
        return true
    }

}

