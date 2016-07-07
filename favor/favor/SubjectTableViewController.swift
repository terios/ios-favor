//
//  Subject.swift
//  favor
//
//  Created by terios on 7/5/16.
//  Copyright © 2016 terios. All rights reserved.
//

import UIKit

class SubjectTableViewController: UITableViewController {
    
    //MARK: attributes
    
    var subjects = [Subject]()
    
    
    
    // MARK: services
    let subjectService = SubjectService()
    
    func loadSubjects() {
        let photo1 = UIImage(named: "subject-image")!
        let subject1 = Subject(title: "Travel", background: photo1)
        
        let subject2 = Subject(title: "Music", background: photo1)
        subjects = [subject1!, subject2!]
        
        
        
        let tmp = SubjectsModel()
        tmp.title = "anas"
        tmp.background = "black"
        
        subjectService.save(tmp)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the sample data.
        loadSubjects()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return subjects.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "SubjectTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! SubjectTableViewCell
        
        // Fetches the appropriate meal for the data source layout.
        let subject = subjects[indexPath.row]
        
        cell.title.text = subject.title
        cell.background.image = subject.background
        
        return cell
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

}
