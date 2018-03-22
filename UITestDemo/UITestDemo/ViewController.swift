//
//  ViewController.swift
//  UITestDemo
//
//  Created by Rajeshkumar maddi on 21/03/18.
//  Copyright © 2018 SaiRajesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var rowsCount:Int = 0
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Button Actions
    
    @IBAction func reloadAction(_ sender: UIButton) {
        
        rowsCount = 9
        self.tableView.reloadData()
    }
    
    //Tableview delegate methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowsCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = "This The row\(indexPath.row)"
        return cell!
    }
    

}

