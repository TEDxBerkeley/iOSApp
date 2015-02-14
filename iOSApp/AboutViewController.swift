//
//  AboutViewController.swift
//  iOSApp
//
//  Created by alvinwan on 1/31/15.
//  Copyright (c) 2015 TExBerkeley. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var TEDxBerkeley: UILabel!
    @IBOutlet weak var TEDx: UILabel!
    @IBOutlet weak var TED: UILabel!
    
    var text = [
        "On February 28, 2015 TEDxBerkeley is gathering world-leading thinkers, makers, and doers at UC Berkeley to discuss “Wisdom.Compassion.Connection.”. The audience will be composed of a diverse mix of over 1500 students, professors, and thought leaders from Berkeley and beyond for a stimulating day of presentations, discussions, entertainment and art that will spark new ideas and opportunities for all.",
        "In the spirit of ideas worth spreading, TEDx is a program of local, self-organized events that bring people together to share a TED-like experience. At a TEDx event, TEDTalks video and live speakers combine to spark deep discussion and connection in a small group. These local, self-organized events are branded TEDx, where x = independently organized TED event. The TED Conference provides general guidance for the TEDx program, but individual TEDx events are self-organized. (Subject to certain rules and regulations.)",
        "TED is a nonprofit organization devoted to Ideas Worth Spreading. Started as a four-day conference in California 25 years ago, TED has grown to support those world-changing ideas with multiple initiatives. The annual TED Conference invites the world’s leading thinkers and doers to speak for 18 minutes. Their talks are then made available, free, at TED.com. TED speakers have included Bill Gates, Al Gore, Jane Goodall, Elizabeth Gilbert, Sir Richard Branson, Nandan Nilekani, Philippe Starck, Ngozi Okonjo-Iweala, Isabel Allende and former UK Prime Minister Gordon Brown. The annual TED Conference takes place each spring in Long Beach, California, along with the TEDActive simulcast in Palm Springs; the annual TEDGlobal conference is held each summer in Edinburgh, Scotland. TED’s media initiatives include TED.com, where new TEDTalks are posted daily, the recently launched TED-Ed platform for students and educators, the Open Translation Project, which provides subtitles and interactive transcripts as well as the ability for any TEDTalk to be translated by volunteers worldwide, and TEDBooks, short e-books by speakers that elaborate on a single idea originally presented on TED’s stage. TED has established the annual TED Prize, where exceptional individuals with a wish to change the world are given the opportunity to put their wishes into action; TEDx, which offers individuals or groups a way to host local, self-organized events around the world, and the TED Fellows program, helping world-changing innovators from around the globe to become part of the TED community and, with its help, amplify the impact of their remarkable projects and activities. Follow TED on Twitter or on Facebook. Follow TED on Twitter at twitter.com/TEDTalks, or on Facebook at facebook.com/TED."
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TEDxBerkeley?.text = text[0]
        TEDx?.text = text[1]
        TED?.text = text[2]
        
        TEDxBerkeley.sizeToFit()
        TEDx.sizeToFit()
        TED.sizeToFit()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        scrollView.scrollEnabled = true
        scrollView.userInteractionEnabled = true
        self.scrollView.contentSize = self.scrollView.frame.size
        contentView.frame = CGRectMake(0,0,self.view.frame.width, 2000)
        
        let leftConstraint = NSLayoutConstraint(
            item: self.contentView,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1.0,
            constant: 0
        )
        self.view.addConstraint(leftConstraint)
        
        let rightConstraint = NSLayoutConstraint(
            item: self.contentView,
            attribute: NSLayoutAttribute.Trailing,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Right,
            multiplier: 1.0,
            constant: 0
        )
        self.view.addConstraint(rightConstraint)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.text.count
    }
    
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = self.AboutView.dequeueReusableCellWithIdentifier("cell-about") as UITableViewCell
//        
//        let row = self.text[indexPath.row]
//        
////        cell.textLabel?.text = row["copy"]
//        
//        cell.textLabel?.text = row["headline"]
//        cell.detailTextLabel?.text = row["copy"]
//        
//        return cell
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
