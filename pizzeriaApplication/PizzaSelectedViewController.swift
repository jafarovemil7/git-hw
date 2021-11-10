//
//  PizzaSelectedViewController.swift
//  pizzeriaApplication
//
//  Created by Эмиль on 02.11.2021.
//

import UIKit

final class PizzaSelectedViewController: UIViewController {
    
    // MARK: - Initializers

    private var priceInfoSegment = UISegmentedControl()
    private let titleSegment = ["Состав", "Цена"]
    private var peperoniNameLabel = UILabel()
    private var peperoniPriceLabel = UILabel()
    private var peperoniCompositionLabel = UILabel()
    private var bbqCompositionLabel = UILabel()
    private let peperoniImage = UIImage(named: "peperoni.png")
    private let bbqImage = UIImage(named: "bbqpizza.png")
    private let bbqNameLabel = UILabel()
    private let bbqPriceLabel = UILabel()
    private let peperoniButton = UIButton()
    private let bbqButton = UIButton()


    override func viewDidLoad() {
        super.viewDidLoad()
        visualComponents()
        peperoniSegment()
        bbqSegment()
    }
    
    // MARK: - Visual Components
    
    private func visualComponents() {
        let backButton = UIBarButtonItem()
        backButton.title = "Назад"
        backButton.tintColor = .black
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        view.backgroundColor = #colorLiteral(red: 0.1866139472, green: 0.1866522133, blue: 0.1866089106, alpha: 1)
        title = "Pizza"
        
        let peperoniView:UIImageView = UIImageView()
        peperoniView.frame = CGRect(x: 20, y: 100, width: 150, height: 150)
        peperoniView.image = peperoniImage
        view.addSubview(peperoniView)
        
        let bbqView:UIImageView = UIImageView()
        bbqView.frame = CGRect(x: 20, y: 260, width: 150, height: 150)
        bbqView.image = bbqImage
        view.addSubview(bbqView)
    
        peperoniNameLabel.text = "Пицца Пепперони"
        peperoniNameLabel.frame = CGRect(x: 190, y: 20, width: 200, height: 200)
        peperoniNameLabel.textColor = .white
        peperoniNameLabel.font = .boldSystemFont(ofSize: 20)
        view.addSubview(peperoniNameLabel)
        
        peperoniPriceLabel.text = ""
        peperoniPriceLabel.frame = CGRect(x: 320, y: 120, width: 200, height: 200)
        peperoniPriceLabel.textColor = .white
        peperoniPriceLabel.font = .boldSystemFont(ofSize: 24)
        view.addSubview(peperoniPriceLabel)
        
        peperoniCompositionLabel.text = "Томатный соус, сыр, пепперони"
        peperoniCompositionLabel.frame = CGRect(x: 190, y: 160, width: 250, height: 50)
        peperoniCompositionLabel.textColor = .white
        peperoniCompositionLabel.numberOfLines = 0
        view.addSubview(peperoniCompositionLabel)
        
        bbqNameLabel.text = "Пицца Чикен BBQ"
        bbqNameLabel.frame = CGRect(x: 190, y: 180, width: 200, height: 200)
        bbqNameLabel.textColor = .white
        bbqNameLabel.font = .boldSystemFont(ofSize: 20)
        view.addSubview(bbqNameLabel)
        
        bbqPriceLabel.text = ""
        bbqPriceLabel.frame = CGRect(x: 320, y: 280, width: 200, height: 200)
        bbqPriceLabel.textColor = .white
        bbqPriceLabel.font = .boldSystemFont(ofSize: 24)
        view.addSubview(bbqPriceLabel)
        
        bbqCompositionLabel.text = "Томатный соус, сыр, курица, лук, грибы, соус BBQ"
        bbqCompositionLabel.frame = CGRect(x: 190, y: 320, width: 250, height: 50)
        bbqCompositionLabel.textColor = .white
        bbqCompositionLabel.numberOfLines = 0
        view.addSubview(bbqCompositionLabel)
        
        peperoniButton.frame = CGRect(x: 190, y: 210, width: 100, height: 30)
        peperoniButton.setTitle("Заказать", for: .normal)
        peperoniButton.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        peperoniButton.layer.cornerRadius = 10
        peperoniButton.addTarget(self, action: #selector(peperoniPage), for: .touchUpInside)
        view.addSubview(peperoniButton)
        
        bbqButton.frame = CGRect(x: 190, y: 370, width: 100, height: 30)
        bbqButton.setTitle("Заказать", for: .normal)
        bbqButton.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        bbqButton.layer.cornerRadius = 10
        bbqButton.addTarget(self, action: #selector(bbqPage), for: .touchUpInside)
        view.addSubview(bbqButton)
        
    }
    // MARK: - Private Methods

    @objc
    private func peperoniSegment() {
        priceInfoSegment = UISegmentedControl(items: titleSegment)
        priceInfoSegment.frame = CGRect(x: 190, y: 140, width: 175, height: 20)
        priceInfoSegment.selectedSegmentIndex = 0
        priceInfoSegment.addTarget(self, action: #selector(peperoniInfoSegment), for: .valueChanged)
        view.addSubview(priceInfoSegment)
    }
    
    @objc
    private func peperoniInfoSegment(sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 1 {
            peperoniPriceLabel.text = "800"
            peperoniCompositionLabel.text = ""
        } else if sender.selectedSegmentIndex == 0 {
            peperoniPriceLabel.text = ""
            peperoniCompositionLabel.text = "Томатный соус, сыр, пепперони"
        }
    }
    
    @objc
    private func bbqSegment() {
        priceInfoSegment = UISegmentedControl(items: titleSegment)
        priceInfoSegment.frame = CGRect(x: 190, y: 300, width: 175, height: 20)
        priceInfoSegment.selectedSegmentIndex = 0
        priceInfoSegment.addTarget(self, action: #selector(bbqInfoSegment), for: .valueChanged)
        view.addSubview(priceInfoSegment)
    }
    
    @objc
    private func bbqInfoSegment(sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            bbqPriceLabel.text = ""
            bbqCompositionLabel.text = "Томатный соус, сыр, курица, лук, грибы, соус BBQ"
        } else if sender.selectedSegmentIndex == 1 {
            bbqCompositionLabel.text = ""
            bbqPriceLabel.text = "800"
        }
    }
    
    @objc
    private func bbqPage() {
        let transitionBbqPage = BbqPageViewController()
        transitionBbqPage.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(transitionBbqPage, animated: true)
        
    }
    
    @objc
    private func peperoniPage() {
        let transitionPeperoniPage = PeperoniPageViewController()
        transitionPeperoniPage.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(transitionPeperoniPage, animated: true)
    }
    
    }

