//
//  LastViewController.swift
//  activityApplication
//
//  Created by Эмиль on 02.11.2021.
//

import UIKit

final class LastViewController: UIViewController {
    
    @IBOutlet weak var dateLabel: UILabel!

    var date = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateLabel.text = date
    }
    
    @IBAction func shareButton(_ sender: UIButton) {
        let shareController = UIActivityViewController(activityItems: [dateLabel.text ?? nil], applicationActivities: nil)
        present(shareController, animated: true)
    }
    
    @IBAction func copyButton(_ sender: UIButton) {
        UIPasteboard.general.string = dateLabel.text

    }
}
