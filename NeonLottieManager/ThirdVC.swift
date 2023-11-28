//
//  ThirdVC.swift
//  NeonLottieManager
//
//  Created by Furkan Deniz Albaylar on 28.11.2023.
//

import UIKit
import NeonSDK

class ThirdVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()

        
    }
    func setupUI(){
        view.backgroundColor = .systemCyan
        let lottie = LottieManager.createLottie(animation: .loadingCircle3)
        view.addSubview(lottie)
        lottie.snp.makeConstraints({make in
            make.center.equalToSuperview()
        })
    }
}
