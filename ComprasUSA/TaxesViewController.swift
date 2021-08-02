//
//  TaxesViewController.swift
//  ComprasUSA
//
//  Created by Gabriel on 28/07/21.
//

import UIKit

class TaxesViewController: UIViewController {

    
    @IBOutlet weak var lbDolar: UILabel!
    
    @IBOutlet weak var lbReal: UILabel!
    
    @IBOutlet weak var lbStateTax: UILabel!
    
    @IBOutlet weak var lbStateTaxDescription: UILabel!
    
    @IBOutlet weak var lbIOFDescription: UILabel!
    
    @IBOutlet weak var lbIOF: UILabel!
    
    @IBOutlet weak var swCreditCard: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        calculateTaxes()
    }

    
    
    @IBAction func changeIOF(_ sender: UISwitch) {
    }
    
    
    func calculateTaxes() {
        lbStateTaxDescription.text = "Imposto do Estado (\(tc.getFormattedValue(of: tc.stateTax, withCurrency: ""))"
        lbIOFDescription.text = "Imposto do Estado (\(tc.getFormattedValue(of: tc.iof, withCurrency: ""))"
        
        lbDolar.text = tc.getFormattedValue(of: tc.shoppingValue, withCurrency: "")
        lbStateTax.text = tc.getFormattedValue(of: tc.stateTaxValue, withCurrency: "")
        lbIOF.text = tc.getFormattedValue(of: tc.iof, withCurrency: "")
        
        let real = tc.calculate(usingCreditCard: swCreditCard.isOn)
        lbReal.text = tc.getFormattedValue(of: real, withCurrency: "R$  ")
        
    }
}
