//
//  Onboarding1VC.swift
//  NeonLottieManager
//
//  Created by Furkan Deniz Albaylar on 28.11.2023.
//

import UIKit
import NeonSDK
import SwiftUI

class Onboarding1VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()

       
    }
    func setupUI(){
        view.backgroundColor = .white
        let lottie = LottieManager.createLottie(animation: .loadingBar)
        view.addSubview(lottie)
        lottie.snp.makeConstraints({make in
            make.top.equalToSuperview().offset(50)
            make.right.left.width.equalToSuperview().inset(20)
            make.height.equalTo(200)
        })
        let lottie2 = LottieManager.createLottie(animation: .custom(name: "Animation - 1699470677410.json"))
        view.addSubview(lottie2)
        lottie2.snp.makeConstraints({make in
            make.top.equalTo(lottie.snp.bottom).offset(10)
            make.right.left.width.equalToSuperview().inset(20)
            make.height.equalTo(200)

        })
        let button = UIButton()
        button.backgroundColor = .systemRed
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.setTitle("Continue", for: .normal)
        button.setTitleColor(.white, for: .normal)
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.top.equalTo(lottie2.snp.bottom).offset(200)
            make.right.left.width.equalToSuperview().inset(20)
            make.height.equalTo(50)
        }
        
        
        
    }
    @objc func buttonTapped(){
        let anotherVC = anotherVC()
        anotherVC.modalPresentationStyle = .fullScreen
        present(anotherVC, animated: true)
    }
    
}

#Preview(body: {
    Onboarding1VC()
})
