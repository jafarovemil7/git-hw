//
//  ViewController.swift
//  pizzeriaApplication
//
//  Created by Эмиль on 02.11.2021.
//

import UIKit

final class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.1866139472, green: 0.1866522133, blue: 0.1866089106, alpha: 1)
        visualComponents()
    }
    
    // MARK: - Visual Components

    func visualComponents() {
        let numberPhone = UITextField()
        numberPhone.textAlignment = .center
        numberPhone.attributedPlaceholder = NSAttributedString(string: "Номер телефона", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        numberPhone.backgroundColor = #colorLiteral(red: 0.4152685404, green: 0.4168567061, blue: 0.4167456031, alpha: 1)
        numberPhone.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        numberPhone.layer.borderWidth = 0.5
        numberPhone.keyboardType = .numberPad
        numberPhone.frame = CGRect(x: 40, y: 300, width: 350, height: 50)
        numberPhone.layer.cornerRadius = 20
        view.addSubview(numberPhone)

        let password = UITextField()
        password.textAlignment = .center
        password.attributedPlaceholder = NSAttributedString(string: "Пароль", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        password.backgroundColor = #colorLiteral(red: 0.4152685404, green: 0.4168567061, blue: 0.4167456031, alpha: 1)
        password.layer.borderWidth = 0.5
        password.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        password.keyboardType = .numberPad
        password.frame = CGRect(x: 40, y: 360, width: 350, height: 50)
        password.layer.cornerRadius = 20
        view.addSubview(password)
        
        let entryButton = UIButton()
        entryButton.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        entryButton.frame = CGRect(x: 40, y: 440, width: 350, height: 50)
        entryButton.layer.cornerRadius = 20
        entryButton.layer.borderWidth = 0.5
        entryButton.setTitle("ВОЙТИ", for: .normal)
        entryButton.addTarget(self, action: #selector(transitionCatalogViewController), for: .touchUpInside)
        view.addSubview(entryButton)
        
        let catImage = UIImage(named: "RGB_Blue_Type_Horz-1.png")
        let myImageView:UIImageView = UIImageView()
        myImageView.frame = CGRect(x: 20, y: 100, width: 400, height: 100)
        myImageView.image = catImage
        view.addSubview(myImageView)
    }
    
    // MARK: - Private Methods

    @objc
    private func transitionCatalogViewController() {
        let catalogViewController = CatalogViewController()
        catalogViewController.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(catalogViewController, animated: true)
    }

}
