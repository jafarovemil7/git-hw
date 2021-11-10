//
//  CatalogViewController.swift
//  pizzeriaApplication
//
//  Created by Эмиль on 02.11.2021.
//

import UIKit

final class CatalogViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.1866139472, green: 0.1866522133, blue: 0.1866089106, alpha: 1)
        visualComponents()
    }
    // MARK: - Visual Components

    private func visualComponents() {
        let pizzaButton = UIButton()
        let sushiButton = UIButton()
        
        pizzaButton.setTitle("ПИЦЦА", for: .normal)
        pizzaButton.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        pizzaButton.frame = CGRect(x: 30, y: 100, width: 370, height: 100)
        pizzaButton.layer.cornerRadius = 20
        pizzaButton.layer.borderWidth = 0.5
        pizzaButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        pizzaButton.addTarget(self, action: #selector(transitionPizzaSelectedViewController), for: .touchUpInside)
        view.addSubview(pizzaButton)
        
        sushiButton.setTitle("СУШИ", for: .normal)
        sushiButton.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        sushiButton.frame = CGRect(x: 30, y: 250, width: 370, height: 100)
        sushiButton.layer.cornerRadius = 20
        sushiButton.layer.borderWidth = 0.5
        sushiButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        view.addSubview(sushiButton)
    }
    
    // MARK: - Private Methods

    @objc
    private func transitionPizzaSelectedViewController() {
        let pizzaTransition = PizzaSelectedViewController()
        pizzaTransition.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(pizzaTransition, animated: true)
        
    }
}
