//
//  File.swift
//  activityApplication
//
//  Created by Эмиль on 30.10.2021.
//

import UIKit

final class PayViewController: UIViewController {
    @IBOutlet weak var colorTwoLabel: UILabel!
    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet weak var memoryLabel: UILabel!
    @IBOutlet weak var iphoneImage: UIImageView!
    @IBOutlet weak var gravingLabel: UILabel!
    @IBOutlet weak var siliconeReadyLabel: UILabel!
    @IBOutlet weak var chargeReadyLabel: UILabel!
    @IBOutlet weak var glassReadyLabel: UILabel!
    @IBOutlet weak var airpodsReadyLabel: UILabel!
    
    
    var colorName = String()
    var memorySize = String()
    var totalPrice = String()
    var segueIphoneImage = UIImage()
    var gravingText = String()
    var siliconReady = String()
    var chargeReady = String()
    var glassReady = String()
    var airpodsReady = String()
    @IBOutlet weak var takeAwayData: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorTwoLabel.text = colorName
        totalPriceLabel.text = totalPrice
        memoryLabel.text = memorySize
        iphoneImage.image = segueIphoneImage
        gravingLabel.text = gravingText
        siliconeReadyLabel.text = siliconReady
        chargeReadyLabel.text = chargeReady
        glassReadyLabel.text = glassReady
        airpodsReadyLabel.text = airpodsReady
        
        }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let destinationVC: LastViewController = segue.destination as! LastViewController
    let dateFormatr = DateFormatter()
        dateFormatr.locale = Locale(identifier: "Ru_ru")
    dateFormatr.dateFormat = "dd MMMM yyyy"
    let strDate = dateFormatr.string(from: (takeAwayData?.date)!)
    destinationVC.date = "Дата самовывоза" + " " + strDate
    }

        @IBAction func registrAction(_ sender: UIButton) {
//            asdasdas
        }
}
