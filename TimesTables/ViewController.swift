//
//  ViewController.swift
//  TimesTables
//
//  Created by Andrei Joghiu on 24/3/15.
//  Copyright (c) 2015 Andrei Joghiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet var slider: UISlider!
    @IBOutlet weak var table: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderMoved(sender: UISlider) {
        println(slider)
        table.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        let timesTable = Int(slider.value * 20)
        cell.textLabel?.text = String(timesTable * (indexPath.row + 1))
        return cell
        
    }

}

