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

        view.backgroundColor = .white

        let myLabel = UILabel()
        myLabel.textAlignment = .center
        myLabel.backgroundColor = .red
        myLabel.text = "chronote sucks"
        myLabel.layer.cornerRadius = 50.0
        myLabel.clipsToBounds = true

        let myTextField = UITextField()
        myTextField.placeholder = "Text input"

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
        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

