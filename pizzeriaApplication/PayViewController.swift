//
//  PayViewController.swift
//  pizzeriaApplication
//
//  Created by Эмиль on 03.11.2021.
//

import UIKit

final class PayViewController: UIViewController {
    
    // MARK: - Initializers
    
    var pizzaImage = UIImage(named: "bbqpizza.png")
    private let pizzaNameLabel = UILabel()
    var pizzaName = String()
    
    private let mushroomsLabel = UILabel()
    private let tomatoLabel = UILabel()
    private let cheeseLabel = UILabel()
    private let chikenLabel = UILabel()
    private let onionLabel = UILabel()
    private let souceLabel = UILabel()
    private let priceLabel = UILabel()
    private let cardSwitch = UISwitch()
    private let cashSwitch = UISwitch()
    private let cardPayLabel = UILabel()
    private let cashPayLabel = UILabel()
    private let payButton = UIButton()
    
    var payMushrooms = String()
    var payTomato = String()
    var payCheese = String()
    var payChiken = String()
    var payOnion = String()
    var paySouce = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.1866139472, green: 0.1866522133, blue: 0.1866089106, alpha: 1)
        visualComponents()
    }
    
    // MARK: - Visual Components
    
    @objc
    private func visualComponents() {
        title = "Оплата"
        
        
        let pizzaView: UIImageView = UIImageView()
        pizzaView.frame = CGRect(x: 30, y: 100, width: 150, height: 150)
        pizzaView.image = pizzaImage
        view.addSubview(pizzaView)
        
        pizzaNameLabel.text = pizzaName
        pizzaNameLabel.frame = CGRect(x: 190, y: 100, width: 300, height: 20)
        pizzaNameLabel.textColor = .white
        pizzaNameLabel.font = .boldSystemFont(ofSize: 20)
        view.addSubview(pizzaNameLabel)
        
        mushroomsLabel.text = payMushrooms
        mushroomsLabel.frame = CGRect(x: 190, y: 130, width: 300, height: 20)
        mushroomsLabel.textColor = .white
        view.addSubview(mushroomsLabel)
        
        tomatoLabel.text = payTomato
        tomatoLabel.frame = CGRect(x: 190, y: 150, width: 300, height: 20)
        tomatoLabel.textColor = .white
        view.addSubview(tomatoLabel)
        
        cheeseLabel.text = payCheese
        cheeseLabel.frame = CGRect(x: 190, y: 170, width: 300, height: 20)
        cheeseLabel.textColor = .white
        view.addSubview(cheeseLabel)
        
        chikenLabel.text = payChiken
        chikenLabel.frame = CGRect(x: 190, y: 190, width: 300, height: 20)
        chikenLabel.textColor = .white
        view.addSubview(chikenLabel)
        
        onionLabel.text = payOnion
        onionLabel.frame = CGRect(x: 190, y: 210, width: 300, height: 20)
        onionLabel.textColor = .white
        view.addSubview(onionLabel)
        
        souceLabel.text = paySouce
        souceLabel.frame = CGRect(x: 190, y: 230, width: 300, height: 20)
        souceLabel.textColor = .white
        view.addSubview(souceLabel)
        
        priceLabel.text = "Сумма к оплате: 800"
        priceLabel.frame = CGRect(x: 120, y: 500, width: 300, height: 50)
        priceLabel.textColor = .white
        priceLabel.font = .boldSystemFont(ofSize: 18)
        view.addSubview(priceLabel)
        
        cardPayLabel.text = "Оплата картой"
        cardPayLabel.frame = CGRect(x: 30, y: 550, width: 350, height: 30)
        cardPayLabel.font = .boldSystemFont(ofSize: 30)
        cardPayLabel.textColor = .white
        view.addSubview(cardPayLabel)
        
        cashPayLabel.text = "Оплата наличными"
        cashPayLabel.frame = CGRect(x: 30, y: 600, width: 350, height: 30)
        cashPayLabel.font = .boldSystemFont(ofSize: 30)
        cashPayLabel.textColor = .white
        view.addSubview(cashPayLabel)
        
        cardSwitch.frame = CGRect(x: 350, y: 550, width: 200, height: 30)
        cardSwitch.setOn(true, animated: true)
        cardSwitch.addTarget(self, action: #selector(switchCardClick(sender:)), for: .valueChanged)
        view.addSubview(cardSwitch)
        
        cashSwitch.frame = CGRect(x: 350, y: 600, width: 200, height: 30)
        cashSwitch.setOn(false, animated: true)
        cashSwitch.addTarget(self, action: #selector(switchCashClick), for: .valueChanged)
        view.addSubview(cashSwitch)
        
        payButton.setTitle("ОПЛАТИТЬ", for: .normal)
        payButton.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        payButton.frame = CGRect(x: 40, y: 700, width: 350, height: 60)
        payButton.layer.cornerRadius = 10
        payButton.addTarget(self, action: #selector(payAlertController), for: .touchUpInside)
        view.addSubview(payButton)

    }
    
    // MARK: - Private Methods

    @objc
    private func switchCardClick(sender: UISwitch) {
        if cardSwitch.isOn {
            cashSwitch.setOn(false, animated: true)
        }
    }
    
    @objc
    private func switchCashClick(sender: UISwitch) {
        if cashSwitch.isOn {
            cardSwitch.setOn(false, animated: true)
        }
    }
    
    @objc
    private func payAlertController() {
        let catalogVC = CatalogViewController()
        
        let alertController = UIAlertController(title: "Спасибо", message: "Ваш заказ оплачен", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Окей", style: .default, handler: { _ in
            self.present(catalogVC, animated: true)
        }))
        catalogVC.modalPresentationStyle = .fullScreen
        catalogVC.modalTransitionStyle = .crossDissolve
        present(alertController, animated: true)

    }

}
