//
//  anotherVC.swift
//  NeonLottieManager
//
//  Created by Furkan Deniz Albaylar on 28.11.2023.
//

import UIKit
import NeonSDK
import SwiftUI

class anotherVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    func setupUI(){
//        LottieManager.showFullScreenLottie(animation: .loadingLines2, color: .blue, backgroundOpacity: 0)
//        LottieManager.showFullScreenLottie(animation: .loadingLines, color: .clear)
        LottieManager.showFullScreenLottie(animation: .custom(name: "Animation - 1699470677410.json"))
        let backButton = UIButton()
        backButton.setTitle("<Back", for: .normal)
        backButton.setTitleColor(.systemBlue, for: .normal)
        backButton.addTarget(self, action: #selector(goBack), for: .touchUpInside)
        view.addSubview(backButton)
        
        backButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(0)
            make.leading.equalToSuperview().offset(-13)
            make.width.equalTo(100)
            make.height.equalTo(40)
        }
        let gobutton = UIButton()
        gobutton.backgroundColor = .systemRed
        gobutton.layer.cornerRadius = 20
        gobutton.addTarget(self, action: #selector(gobuttonTapped), for: .touchUpInside)
        gobutton.setTitle("ThirdVC", for: .normal)
        gobutton.setTitleColor(.white, for: .normal)
        view.addSubview(gobutton)
        
        gobutton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(500)
            make.right.left.width.equalToSuperview().inset(20)
            make.height.equalTo(50)
        }
       
        

    }
    @objc func goBack(){
        LottieManager.removeFullScreenLottie()
        self.dismiss(animated: true)
    }
    @objc func gobuttonTapped(){
        let thirdVC = ThirdVC()
        self.present(thirdVC, animated: true)
        
    }
}
#Preview(body: {
    anotherVC()
})

