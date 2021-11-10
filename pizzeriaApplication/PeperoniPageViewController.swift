//
//  PeperoniPageViewController.swift
//  pizzeriaApplication
//
//  Created by Эмиль on 03.11.2021.
//

import UIKit

final class PeperoniPageViewController: UIViewController {
    
    // MARK: - Initializers
    
    private let peperoniImage = UIImage(named: "peperoni.png")
    private let peperoniNameLabel = UILabel()
    private let tomatoLabel = UILabel()
    private let tomatoSwitch = UISwitch()
    private let cheeseLabel = UILabel()
    private let cheeseSwitch = UISwitch()
    private let peperoniLabel = UILabel()
    private let peperoniSwitch = UISwitch()
    private let orderButton = UIButton()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.1866139472, green: 0.1866522133, blue: 0.1866089106, alpha: 1)
        visualComponents()
    }
    
        // MARK: - Visual Components
    
    @objc
    private func visualComponents() {
        title = "Пепперони"

        let peperoniView:UIImageView = UIImageView()
        peperoniView.frame = CGRect(x: 60, y: 100, width: 300, height: 300)
        peperoniView.image = peperoniImage
        view.addSubview(peperoniView)
        
        peperoniNameLabel.text = "Пепперони"
        peperoniNameLabel.frame = CGRect(x: 120, y: 400, width: 300, height: 30)
        peperoniNameLabel.textColor = #colorLiteral(red: 0.9290005565, green: 0.9291562438, blue: 0.9289800525, alpha: 1)
        peperoniNameLabel.font = .boldSystemFont(ofSize: 35)
        view.addSubview(peperoniNameLabel)
        
        tomatoLabel.frame = CGRect(x: 20, y: 450, width: 300, height: 30)
        tomatoLabel.text = "Томатная паста"
        tomatoLabel.textColor = .white
        tomatoLabel.font = .boldSystemFont(ofSize: 24)
        view.addSubview(tomatoLabel)
        
        tomatoSwitch.frame = CGRect(x: 350, y: 450, width: 200, height: 30)
        view.addSubview(tomatoSwitch)
        
        cheeseLabel.frame = CGRect(x: 20, y: 500, width: 300, height: 30)
        cheeseLabel.text = "Сыр"
        cheeseLabel.textColor = .white
        cheeseLabel.font = .boldSystemFont(ofSize: 24)
        view.addSubview(cheeseLabel)
        
        cheeseSwitch.frame = CGRect(x: 350, y: 500, width: 200, height: 30)
        view.addSubview(cheeseSwitch)
        
        peperoniLabel.frame = CGRect(x: 20, y: 550, width: 300, height: 30)
        peperoniLabel.text = "Курица"
        peperoniLabel.textColor = .white
        peperoniLabel.font = .boldSystemFont(ofSize: 24)
        view.addSubview(peperoniLabel)
        
        peperoniSwitch.frame = CGRect(x: 350, y: 550, width: 200, height: 30)
        view.addSubview(peperoniSwitch)
        
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

        transitionPV.pizzaImage = UIImage(named: "peperoni.png")
        transitionPV.pizzaName =  peperoniLabel.text!

        
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
        
        
        if peperoniSwitch.isOn {
            transitionPV.payOnion = "Пепперони"
        } else {
            transitionPV.payOnion = "Без пепперони"
        }

        
        navigationController?.pushViewController(transitionPV, animated: true)
    }
}
