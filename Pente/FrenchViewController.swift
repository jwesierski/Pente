//
//  FrenchViewController.swift
//  Pente
//
//  Created by Jack Michael Wesierski on 12/8/20.
//

import UIKit

class FrenchViewController: UIViewController {

    @IBOutlet weak var frenchMediaTableView: UITableView!
    
    var frenchMediaArray = ["Videos","Songs","Misc"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        frenchMediaTableView.dataSource = self
        frenchMediaTableView.delegate = self
        // Do any additional setup after loading the view.
    }
}
    
extension FrenchViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return frenchMediaArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "frenchVideoCell", for: indexPath)
        cell.textLabel?.text = frenchMediaArray[indexPath.row]
        return cell
    }
    
        
    }



