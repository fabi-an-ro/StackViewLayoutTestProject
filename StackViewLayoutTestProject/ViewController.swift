//
//  ViewController.swift
//  StackViewLayoutTestProject
//
//  Created by Fabian Rottensteiner on 13.03.24.
//

import UIKit

class ViewController: UIViewController {
    private lazy var alreadyInPlaceStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [alreadyInPlaceLabel, alreadyInPlaceSwitch])
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = .green

        return stackView
    }()

    private lazy var alreadyInPlaceLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.text = "Test 123"

        return label
    }()

    private lazy var alreadyInPlaceSwitch: UISwitch = {
        let view = UISwitch()
        view.onTintColor = .blue
        view.tintColor = .red

        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        setupSubviews()
    }

    private func setupSubviews() {
        view.addSubview(alreadyInPlaceStackView)

        NSLayoutConstraint.activate([
            alreadyInPlaceStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            alreadyInPlaceStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            alreadyInPlaceStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
