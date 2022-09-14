//
//  NextViewController.swift
//  Delegate_Tutorial
//
//  Created by 준수김 on 2022/09/14.
//

import UIKit

// 1) 프로토콜 생성
protocol SampleProtocol {
    func saveData(data: String)
}

class NextViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    
    // 2) 생성해준 프로토콜 타입을 가진 프로퍼티 선언
    var delegate: SampleProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func saveData(_ sender: UIButton) {
        
        // 3) delegate 프로퍼티의 saveData 함수를 불러와 매개변수로 text를 넣어준다.
        if let text = myTextField.text {
            delegate?.saveData(data: text)
        }
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
