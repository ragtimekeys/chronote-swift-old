//
//  ViewController.swift
//  Chronote
//
//  Created by Jimmy Granger on 6/16/18.
//  Copyright © 2018 80protons. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Home"
        tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)

        view.backgroundColor = .white

        let myLabel = UILabel()
        myLabel.textAlignment = .center
        myLabel.backgroundColor = .red
        myLabel.text = "chronote sucks"
        myLabel.layer.cornerRadius = 50.0
        myLabel.clipsToBounds = true

        let myTextField = UITextField()
        myTextField.layer.borderColor = UIColor.black.cgColor
        myTextField.layer.borderWidth = 2
        myTextField.placeholder = "Text input"
        myTextField.returnKeyType = .done
        myTextField.addTarget(
            self,
            action: #selector(didReturnFromTextField(_:)),
            for: .editingDidEndOnExit
        )

        let mySegmentedControl = UISegmentedControl(items: [
            "A",
            "B"
        ])

        let myDatePicker = UIDatePicker()
        myDatePicker.datePickerMode = .countDownTimer
        myDatePicker.backgroundColor = .blue

        let stackView = UIStackView(arrangedSubviews: [
            myLabel,
            myTextField,
            mySegmentedControl,
            myDatePicker
        ])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.axis = .vertical
        stackView.spacing = 30
        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
            stackView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        ])
    }

    @objc
    func didReturnFromTextField(_ sender: UITextField) {
        view.endEditing(true)
    }
}

