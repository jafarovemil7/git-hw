//
//  BbqPageViewController.swift
//  pizzeriaApplication
//
//  Created by Эмиль on 03.11.2021.
//

import UIKit

final class BbqPageViewController: UIViewController {
    
    // MARK: - Initializers

    private let bbqImage = UIImage(named: "bbqpizza.png")
    private let bbqNameLabel = UILabel()
    private let mushroomsLabel = UILabel()
    private let mushSwitch = UISwitch()
    var mushrooms = String()
    private let tomatoLabel = UILabel()
    private let tomatoSwitch = UISwitch()
    private let cheeseLabel = UILabel()
    private let cheeseSwitch = UISwitch()
    private let chikenLabel = UILabel()
    private let chikenSwitch = UISwitch()
    private let onionLabel = UILabel()
    private let onionSwitch = UISwitch()
    private let souceLabel = UILabel()
    private let souceSwitch = UISwitch()
    private let orderButton = UIButton()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.1866139472, green: 0.1866522133, blue: 0.1866089106, alpha: 1)
        visualComponents()
        
    }
    
    // MARK: - Visual Components
    
    @objc
    private func visualComponents() {
        title = "Чикен BBQ"
        
        let bbqView:UIImageView = UIImageView()
        bbqView.frame = CGRect(x: 60, y: 100, width: 300, height: 300)
        bbqView.image = bbqImage
        view.addSubview(bbqView)
        
        bbqNameLabel.text = "Чикен BBQ"
        bbqNameLabel.frame = CGRect(x: 120, y: 400, width: 300, height: 30)
        bbqNameLabel.textColor = #colorLiteral(red: 0.9290005565, green: 0.9291562438, blue: 0.9289800525, alpha: 1)
        bbqNameLabel.font = .boldSystemFont(ofSize: 35)
        view.addSubview(bbqNameLabel)
        
        mushroomsLabel.frame = CGRect(x: 20, y: 480, width: 300, height: 30)
        mushroomsLabel.text = "Грибы"
        mushroomsLabel.textColor = .white
        mushroomsLabel.font = .boldSystemFont(ofSize: 24)
        view.addSubview(mushroomsLabel)
        
        mushSwitch.frame = CGRect(x: 350, y: 480, width: 200, height: 30)
        mushSwitch.onTintColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        view.addSubview(mushSwitch)
        
        tomatoLabel.frame = CGRect(x: 20, y: 530, width: 300, height: 30)
        tomatoLabel.text = "Томатная паста"
        tomatoLabel.textColor = .white
        tomatoLabel.font = .boldSystemFont(ofSize: 24)
        view.addSubview(tomatoLabel)
        
        tomatoSwitch.frame = CGRect(x: 350, y: 530, width: 200, height: 30)
        tomatoSwitch.onTintColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        view.addSubview(tomatoSwitch)
        
        cheeseLabel.frame = CGRect(x: 20, y: 580, width: 300, height: 30)
        cheeseLabel.text = "Сыр"
        cheeseLabel.textColor = .white
        cheeseLabel.font = .boldSystemFont(ofSize: 24)
        view.addSubview(cheeseLabel)
        
        cheeseSwitch.frame = CGRect(x: 350, y: 580, width: 200, height: 30)
        cheeseSwitch.onTintColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        view.addSubview(cheeseSwitch)
        
        chikenLabel.frame = CGRect(x: 20, y: 630, width: 300, height: 30)
        chikenLabel.text = "Курица"
        chikenLabel.textColor = .white
        chikenLabel.font = .boldSystemFont(ofSize: 24)
        view.addSubview(chikenLabel)
        
        chikenSwitch.frame = CGRect(x: 350, y: 630, width: 200, height: 30)
        chikenSwitch.onTintColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        view.addSubview(chikenSwitch)

        onionLabel.frame = CGRect(x: 20, y: 680, width: 300, height: 30)
        onionLabel.text = "Лук"
        onionLabel.textColor = .white
        onionLabel.font = .boldSystemFont(ofSize: 24)
        view.addSubview(onionLabel)
        
        onionSwitch.frame = CGRect(x: 350, y: 680, width: 200, height: 30)
        onionSwitch.onTintColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        view.addSubview(onionSwitch)
        
        souceLabel.frame = CGRect(x: 20, y: 730, width: 300, height: 30)
        souceLabel.text = "Соус BBQ"
        souceLabel.textColor = .white
        souceLabel.font = .boldSystemFont(ofSize: 24)
        view.addSubview(souceLabel)
        
        souceSwitch.frame = CGRect(x: 350, y: 730, width: 200, height: 30)
        souceSwitch.onTintColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        view.addSubview(souceSwitch)
        
        orderButton.frame = CGRect(x: 15, y: 810, width: 390, height: 30)
        orderButton.setTitle("Заказать", for: .normal)
        orderButton.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        orderButton.layer.cornerRadius = 10
        orderButton.addTarget(self, action: #selector(transitionPayViewController), for: .touchUpInside)
        view.addSubview(orderButton)
    }
    
    // MARK: - Private Methods

    @objc
    private func transitionPayViewController() {
        let transitionPV = PayViewController()
        transitionPV.pizzaImage = UIImage(named: "bbqpizza.png")
        transitionPV.pizzaName =  bbqNameLabel.text!
        
        if mushSwitch.isOn {
            transitionPV.payMushrooms = "Грибы"
        } else {
            transitionPV.payMushrooms = "Без грибов"
        }
        
        if tomatoSwitch.isOn {
            transitionPV.payTomato = "Томатная паста"
        } else {
            transitionPV.payTomato = "Без томатной пасты"
        }
        
        if cheeseSwitch.isOn {
            transitionPV.payCheese = "Сыр"
        } else {
            transitionPV.payCheese = "Без сыра"
        }
        
        if chikenSwitch.isOn {
            transitionPV.payChiken = "Курица"
        } else {
            transitionPV.payChiken = "Без курицы"
        }
        
        if onionSwitch.isOn {
            transitionPV.payOnion = "Лук"
        } else {
            transitionPV.payOnion = "Без лука"
        }
        
        if souceSwitch.isOn {
            transitionPV.paySouce = "Соус BBQ"
        } else {
            transitionPV.paySouce = "Без соуса BBQ"
        }
        
        navigationController?.pushViewController(transitionPV, animated: true)
    }
}
