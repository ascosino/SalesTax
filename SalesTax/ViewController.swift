//
//  ViewController.swift
//  SalesTax
//
//  Created by Aira Sofia Cosino on 17/07/20.
//  Copyright © 2020 Aira Sofia Cosino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceTxt:UITextField!
    
    @IBOutlet weak var salesTax: UITextField!
    
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        totalPriceLabel.text = ""
    }

    @IBAction func calculatePrice(_ sender: Any) {
        //Double converts string to decimal
        let price = Double(priceTxt.text!)!
        let salesTaxTxt = Double(salesTax.text!)!
        
        let totalSalesTax = price * salesTaxTxt
        let totalPrice = price + totalSalesTax
        totalPriceLabel.text = "$\(totalPrice)"
    }
    
}

