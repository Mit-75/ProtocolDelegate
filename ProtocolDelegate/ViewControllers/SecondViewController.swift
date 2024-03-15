//
//  SecondViewController.swift
//  ProtocolDelegate
//
//  Created by Dmitry Parhomenko on 15.03.2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    weak var delegate: SecondViewControllerDelegate?
    
    let user = User(name: "", surname: "")
    
    @IBOutlet var fsecondVCLabel: UILabel!
    
    @IBOutlet var nameTF: UITextField!
    @IBOutlet var surnameTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTF.delegate = self
        surnameTF.delegate = self
    }
    
    @IBAction func orderButton(_ sender: UIButton) {
        delegate?.completeOrder()
        dismiss(animated: true)
    }
    
}

// MARK: - UITextFieldDelegate
extension SecondViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == nameTF {
            user.name = nameTF.text ?? ""
        } else {
            user.surname = surnameTF.text ?? ""
        }
    }
}
