//
//  SpeakersTableViewController.swift
//  iOSApp
//
//  Created by alvinwan on 1/24/15.
//  Copyright (c) 2015 TExBerkeley. All rights reserved.
//

import UIKit

class SpeakersTableViewController: UITableViewController, UITableViewDelegate, UITableViewDataSource
    {
    
    @IBOutlet var SpeakersView: UITableView!
    
    var items = [
        ["name": "John Doe", "byline": "An acrobat at heart and a nerd by birth.", "bio": "This is some text about DoeDoe."],
        ["name": "Toucan Nine", "byline": "Some nonsense autobiography.", "bio": "and More!"],
        ["name": "Angie", "byline": "I See the Light", "bio": "wowwwwwwwww"]
    ];
    
    override func viewDidLoad() {
        println("speakers loaded");
        
        super.viewDidLoad()
        
//        self.SpeakersView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell-speaker")
//        self.SpeakersView.dataSource = self
        
//        self.SpeakersView.rowHeight = UITableViewAutomaticDimension
        self.SpeakersView.estimatedRowHeight = 60.0

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
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return items.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell-speaker") as UITableViewCell
        
        let row = self.items[indexPath.row]

        cell.textLabel?.text = row["name"]
        cell.detailTextLabel?.text = row["byline"]
        
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell;
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let data = items[indexPath.row]
        
        let speakerDetailViewController = SpeakerTableViewController()
        speakerDetailViewController.items = data
        
        speakerDetailViewController.performSegueWithIdentifier("speakerDetail", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        println("preparation called");
//        if segue.identifier == "speakerDetail" {
            println("preparing...");
        let speakerDetailViewController = segue.destinationViewController as SpeakerTableViewController;
//        SpeakerTableViewController
            speakerDetailViewController.viewDidLoad();
            println("preparing...");
            let indexPath = self.tableView.indexPathForSelectedRow()!
            let data = self.items[indexPath.row];
//            speakerDetailViewController.title = data["name"];
            speakerDetailViewController.items = data;
//        }
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
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
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
