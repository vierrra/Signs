//
//  ViewController.swift
//  Signos
//
//  Created by Renato Vieira on 3/20/21.
//

import UIKit

class ViewController: UITableViewController {
    
    var signList: [Sign] = SignsDao().returnAllSigns()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    public func showAlert(title: String, message: String) {
        let alert    = UIAlertController(title: "Significado de \(title)", message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(okButton)
        
        present(alert, animated: true, completion: nil)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signList.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell         = tableView.dequeueReusableCell(withIdentifier: "cellReuse", for: indexPath)
        let currentSigno = signList[indexPath.row]
        
        cell.textLabel?.text = currentSigno.sign
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
        
        let currentSigno = signList[indexPath.row]
        
        self.showAlert(title: currentSigno.sign, message: currentSigno.meaning)
    }
}
