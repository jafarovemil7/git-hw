//
//  ViewController.swift
//  activityApplication
//
//  Created by Эмиль on 28.10.2021.
//

import UIKit

final class ProductViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet weak var memorySizeLabel: UILabel!
    @IBOutlet weak var iPhoneImage: UIImageView!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var gravingTxtField: UITextField!
    
    private var airpodsIsOn = String()
    private var siliconeIsOn = String()
    private var chargeIsOn = String()
    private var glassIsOn = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC: PayViewController = segue.destination as! PayViewController
        destinationVC.colorName = String(colorLabel.text!)
        destinationVC.memorySize = String(memorySizeLabel.text!)
        destinationVC.totalPrice = String(totalPriceLabel.text!)
        destinationVC.segueIphoneImage = iPhoneImage.image!
        
        if gravingTxtField.text == "" {
            destinationVC.gravingText = "Гравировки нет"
        } else {
            destinationVC.gravingText = "Гравировка:" + " " + gravingTxtField.text!
        }
        
        destinationVC.glassReady = glassIsOn
        destinationVC.chargeReady = chargeIsOn
        destinationVC.siliconReady = siliconeIsOn
        destinationVC.airpodsReady = airpodsIsOn

    }


    @IBAction func slidePayVC(_ sender: UIButton) {
        ()
    }

    @IBAction  func engravingSwitch(_ sender: UISwitch) {
        let engravingSwitch = 4999
        let IntTotalPriceLabel: Int? = Int(totalPriceLabel.text!) ?? 0
        let switchIsOn = IntTotalPriceLabel! + engravingSwitch
        let switchIsOff = IntTotalPriceLabel! - engravingSwitch
        
        if sender.isOn {
            totalPriceLabel.text = String(switchIsOn)
        } else  {
            totalPriceLabel.text = String(switchIsOff)
        }
    }
    
    @IBAction private func siliconeSwitch(_ sender: UISwitch) {
        let siliconeCasePrice = 999
        let IntTotalPriceLabel: Int? = Int(totalPriceLabel.text!) ?? 0
        let switchIsOn = IntTotalPriceLabel! + siliconeCasePrice
        let switchIsOff = IntTotalPriceLabel! - siliconeCasePrice
        
        if sender.isOn {
            totalPriceLabel.text = String(switchIsOn)
            siliconeIsOn = "+"
        } else  {
            totalPriceLabel.text = String(switchIsOff)
        }
    }
    
    @IBAction private func chargeSwitch(_ sender: UISwitch) {
        let chargePrice = 1999
        let IntTotalPriceLabel: Int? = Int(totalPriceLabel.text!) ?? 0
        let switchIsOn = IntTotalPriceLabel! + chargePrice
        let switchIsOff = IntTotalPriceLabel! - chargePrice
        
        if sender.isOn {
            totalPriceLabel.text = String(switchIsOn)
            chargeIsOn = "+"
        } else  {
            totalPriceLabel.text = String(switchIsOff)
        }
    }
    
    @IBAction private func glassSwitch(_ sender: UISwitch) {
        let glassPrice = 599
        let IntTotalPriceLabel: Int? = Int(totalPriceLabel.text!) ?? 0
        let switchIsOn = IntTotalPriceLabel! + glassPrice
        let switchIsOff = IntTotalPriceLabel! - glassPrice
        
        if sender.isOn {
            totalPriceLabel.text = String(switchIsOn)
            glassIsOn = "+"
        } else  {
            totalPriceLabel.text = String(switchIsOff)
        }
    }
    
    @IBAction private func airpodsSwitch(_ sender: UISwitch) {
        let airpodsPrice = 19999
        let IntTotalPriceLabel: Int? = Int(totalPriceLabel.text!) ?? 0
        let switchIsOn = IntTotalPriceLabel! + airpodsPrice
        let switchIsOff = IntTotalPriceLabel! - airpodsPrice
        
        if sender.isOn {
            totalPriceLabel.text = String(switchIsOn)
            airpodsIsOn = "+"
        } else  {
            totalPriceLabel.text = String(switchIsOff)
        }
    }
    
    @IBAction func memorySegment(_ sender: UISegmentedControl) {
        tabBarController?.selectedIndex = 0
        if sender.selectedSegmentIndex == 0 {
            memorySizeLabel.text = "Память: 64 GB"
            priceLabel.text = "89999"
            totalPriceLabel.text = priceLabel.text
        } else if sender.selectedSegmentIndex == 1 {
            memorySizeLabel.text = "Память: 128 GB"
            priceLabel.text = "99999"
            totalPriceLabel.text = priceLabel.text

        } else if sender.selectedSegmentIndex == 2 {
            memorySizeLabel.text = "Память: 256 GB"
            priceLabel.text = "109999"
            totalPriceLabel.text = priceLabel.text

        } else if sender.selectedSegmentIndex == 3 {
            memorySizeLabel.text = "Память: 512 GB"
            priceLabel.text = "119999"
            totalPriceLabel.text = priceLabel.text

        } else if sender.selectedSegmentIndex == 4 {
            memorySizeLabel.text = "Память: 1 TB"
            priceLabel.text = "129999"
            totalPriceLabel.text = priceLabel.text

        }
    }
    
    @IBAction func colorSegment(_ sender: UISegmentedControl) {
        tabBarController?.selectedIndex = 0
        if sender.selectedSegmentIndex == 0 {
            iPhoneImage.image = #imageLiteral(resourceName: "MM2D3")
            colorLabel.text = "Оранжевый"
        } else if sender.selectedSegmentIndex == 1 {
            iPhoneImage.image = #imageLiteral(resourceName: "MM2F3")
            colorLabel.text = "Зеленый"
        } else if sender.selectedSegmentIndex == 2 {
            iPhoneImage.image = #imageLiteral(resourceName: "MM2L3")
            colorLabel.text = "Красный"
        } else if sender.selectedSegmentIndex == 3 {
            iPhoneImage.image = #imageLiteral(resourceName: "MM2H3")
            colorLabel.text = "Розовый"
        } else if sender.selectedSegmentIndex == 4 {
            iPhoneImage.image = #imageLiteral(resourceName: "MM2G3")
            colorLabel.text = "Синий"
        }
    }
}
