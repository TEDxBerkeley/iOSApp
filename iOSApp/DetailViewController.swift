//
//  DetailViewController.swift
//  iOSApp
//
//  Created by alvinwan on 1/4/16.
//  Copyright (c) 2016 TExBerkeley. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelByline: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var labelBio: UITextView!
    @IBOutlet weak var imageBG: UIImageView!
    
    var items = ["name": "loading...", "byline": "loading...", "bio": "loading..."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateLabels();
        
        image.layer.cornerRadius = 75;
        image.clipsToBounds = true;
        image.layer.borderWidth = 10.0;
        image.layer.borderColor = UIColor.whiteColor().CGColor

        // Do any additional setup after loading the view.
    }
    
    func updateLabels() {
        labelName?.text = self.items["name"]
        labelByline?.text = self.items["byline"]
        labelBio?.text = self.items["bio"]
        image?.image = UIImage(named: String(self.items["image"]!+""))
        imageBG?.image = UIImage(named: String(self.items["image"]!+""))
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
