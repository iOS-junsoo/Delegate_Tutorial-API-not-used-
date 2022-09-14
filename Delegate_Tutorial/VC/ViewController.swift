//
//  ViewController.swift
//  Delegate_Tutorial
//
//  Created by 준수김 on 2022/09/14.
//
//  참고 URL: https://roniruny.tistory.com/139
//  예시 설명: NextVC에서 Text를 입력하고 VC로 돌아가면 데이터가 전달되는 방식

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }

    @IBAction func NextButton(_ sender: UIButton) {
        
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "NextViewController") as? NextViewController else { return }
        
        // 6) 델리게이트 위임
        nextVC.delegate = self
        
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
}

// 4) 프로토콜 채택
extension ViewController: SampleProtocol {
    
    // 5) 프로토콜에서 작성되었던 함수 선언
    func saveData(data: String) {
        dataLabel.text = data
    }
    
}


/*
 
 [정리]
 
 1) 프로토콜 생성
 
 2) 생성해준 프로토콜 타입을 가진 프로퍼티 선언
 
 3) delegate 프로퍼티의 saveData 함수를 불러와 매개변수로 text를 넣어준다.
 
 4) 프로토콜 채택
 
 5) 프로토콜에서 작성되었던 함수 선언
 
 6) 델리게이트 위임
 
 */
