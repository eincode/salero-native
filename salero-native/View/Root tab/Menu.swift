//
//  Menu.swift
//  salero-native
//
//  Created by Ananta Pratama on /5Jul/18.
//  Copyright © 2018 Ignitech. All rights reserved.
//

import UIKit

let P001 = ProductModel(name: "Paket Keluarga", description: ["1","2"], image: "P0001", price: "IDR 30k")

let P002 = ProductModel(name: "Paket Super", description: ["1","2"], image: "P0002", price: "IDR 25k")

let products = [P001, P002]

class Menu: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCellReuseIdentifier") as! MenuCell
        
        cell.productTitle.text = products[indexPath.row].productName
        cell.productPrice.text = products[indexPath.row].productPrice
        cell.productImage.image = UIImage(named: products[indexPath.row].productImage)
        cell.productDescription.text = products[indexPath.row].description[0]
        
        return cell
    }

}
