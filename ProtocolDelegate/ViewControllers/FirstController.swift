//
//  ViewController.swift
//  ProtocolDelegate
//
//  Created by Dmitry Parhomenko on 15.03.2024.
//

import UIKit


protocol SecondViewControllerDelegate: AnyObject {
    func completeOrder()
}

final class FirstController: UIViewController {
    
    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var fullNameLabel: UILabel!
    
    @IBOutlet var clientActionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as? SecondViewController
        secondVC?.delegate = self
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        clientActionButton.titleLabel?.text == "Сделать Заказ"
    }
    
    @IBAction private func ActionBatton(_ sender: UIButton) {
        if clientActionButton.titleLabel?.text == "Оплатить счет" {
            infoLabel.text = "Хочу есть!"
            clientActionButton.setTitle("Сделать Заказ", for: .normal)
        } else {
            performSegue(withIdentifier: "gosecondVC", sender: nil)
        }
    }
}

extension FirstController: SecondViewControllerDelegate {
    func completeOrder() {
        infoLabel.text = "Спасибо!"
        clientActionButton.setTitle("Оплатить счет", for: .normal)
    }
}

