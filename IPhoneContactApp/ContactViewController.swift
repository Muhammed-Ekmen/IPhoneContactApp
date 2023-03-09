//
//  ContactViewController.swift
//  IPhoneContactApp
//
//  Created by Semih Ekmen on 8.03.2023.
//


/*
SPLITVIEWCONTROLLER

 NOTE: on the old xcode versions, there is a master-detaild app choice in the menu. But apple have removed it. So, you shoudl create normal singleViewApp and create splitController from library.

 [DESCRIPTION]
    well, one more view. TabloView,collection and now, we gonna see the SplitViewController. this view similar to iphone's phone menu. in this reason
    our example app will be Iphone contact app.
 [USAGE]
 
    - firstly, create splitViewController from library. In default, splitController gives us 2 screen. These are UITableView(calls like masterView) and
    UIViewController(calls like detail screeen). But we can change them and we will already change it and create custom controller file.

    - for the master(UITableViewController), create new cocoaTouch file which it's subclass. we have created file nad its name was ContactViewController. After that do not forget the connect to master Screen on storyboard.
    
    - in same way, we have created cocoaTouchClass for detail screen and connected on the storyboard.
    
    - finally,we gotta setting up splitViewController in the sceneDelegate. swift file. So, go to sceneDelegate.swift file.
    add the UISplitViewControllerDelegate to our SceneDelegate class. I mean, do inheritance.
    after that call the splitViewController function which include collapseSecondary and onto parameters.
 
 
    - now, we can set up the our viewControllers or view customization. but before the start, don't forget the table view cell reuseIdentifier code.
    In addionally, you can give reuseIdentifier from viewDidLoad function. in the this function:
    
    tableView.register(UITableViewCell.self,forCellReuseIdentifier: "any cell reuseIdentifier") // tableView object comes from inherited class that UITableViewController
   
    - if you want to change the cell, text without custom cell class, go to the tableView function which include the cellForRowAt. you have already
    reach the cell with guard let. call the "cell.textlabel?.text = "new Text" "
*/

import UIKit

class ContactViewController: UITableViewController {
    
    var contactList:[Contact] = ContactSource.contacts
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell =  tableView.dequeueReusableCell(withIdentifier: "cellOfMember",for: indexPath)
        let contact = contactList[indexPath.row]
        cell.textLabel?.text = "\(contact.firstName) \(contact.lastName)"
        return cell
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goDetail", sender: self)
    }
}
