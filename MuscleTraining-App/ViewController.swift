//
//  ViewController.swift
//  MuscleTraining-App
//
//  Created by haruka on 2020/05/25.
//  Copyright © 2020 haruka. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    // 筋肉アバターの画像
    @IBOutlet weak var MuscleView: UIImageView!
    // 筋トレ回数を入力するテキストフィールド
    @IBOutlet weak var MuscleInput: UITextField! {
        willSet {
            // 数字のキーボードが表示されるようにする
            newValue.keyboardType = UIKeyboardType.numbersAndPunctuation
        }
    }
    
    // 筋トレの回数
    var MuscleCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MuscleInput.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        // 筋トレの回数で表示する画像を変える
        switch MuscleCount {
        case 0...10:
            MuscleView.image = UIImage(named: "ookawayakitai_TP_V4.jpg")
        case 11...20:
            MuscleView.image = UIImage(named: "PAKU6479_TP_V4.jpg")
        case 21...30:
            MuscleView.image = UIImage(named: "BO15103010151030105164_TP_V4.jpg")
        default:
            // 筋トレ回数をゼロにする
            MuscleCount = 0
            break
        }
    }

    // 闘魂を注入したとき
    @IBAction func MuscleButtonAction(_ sender: UIButton) {
        MuscleCount = MuscleCount + 11
        // 筋トレの回数で表示する画像を変える
        switch MuscleCount {
        case 0...10:
            MuscleView.image = UIImage(named: "ookawayakitai_TP_V4.jpg")
        case 11...20:
            MuscleView.image = UIImage(named: "PAKU6479_TP_V4.jpg")
        case 21...30:
            MuscleView.image = UIImage(named: "BO15103059151030595160_TP_V4.jpg")
        default:
            // 筋トレ回数をゼロにする
            MuscleCount = 0
            MuscleView.image = UIImage(named: "ookawayakitai_TP_V4.jpg")
            break
        }
        MuscleInput.text = ""
    }
    
    // キーボードの外をタップで閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    // returnキーを押したら閉じる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

