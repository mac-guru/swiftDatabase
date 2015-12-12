//
//  ViewController.swift
//  swiftDatabase
//
//  Created by amrit on 12/12/15.
//  Copyright © 2015 Amrit. All rights reserved.
//

import UIKit
import CoreData


class ViewController: UIViewController {

    @IBOutlet var firstName: UITextField!
    @IBOutlet var lastName: UITextField!
    @IBOutlet var collegeName: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
    
    @IBAction func saveData(sender: AnyObject) {
        
        let AppDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let Context: NSManagedObjectContext = AppDel.managedObjectContext
        let entity = NSEntityDescription.entityForName("StudentDetail", inManagedObjectContext: Context)
        
        let item = databaseThing(entity: entity!, insertIntoManagedObjectContext: Context)
        
        item.firstName = firstName.text!
        item.lastName = lastName.text!
        item.collegeName = collegeName.text!
        
        
        do{
        
            try Context.save()
        
        }
        catch _ {
        
        }
    
    
}
        
    }


