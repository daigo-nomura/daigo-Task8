//
//  GreenViewController.swift
//  Task8
//
//  Created by 野村大悟 on 2021/04/20.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet private var valueLabel: UILabel!

    @IBOutlet private var slider: UISlider!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            slider.setValue(delegate.valueStorage, animated: false)
            valueLabel.text = "\(delegate.valueStorage)"
        }
    }

    @IBAction private func changeValue(_ sender: Any) {
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
        delegate.valueStorage = slider.value
        valueLabel.text = "\(delegate.valueStorage)"
        }
    }
}
