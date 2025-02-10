//
//  InfoViewController.swift
//  Navigation
//
//  Created by Nikita  on 10.02.2025.
//

import UIKit

class InfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let button = UIButton(type: .system)
        button.setTitle("Показать сообщение", for: .normal)
        button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(button)

        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc func showAlert() {
        let alertController = UIAlertController(title: "Сообщение", message: "Вы вызвали это сообщение", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "ОК", style: .default, handler: { _ in
            print("пользователь нажал кнопку OK")
        }))
        alertController.addAction(UIAlertAction(title: "Отмена", style: .cancel, handler: { _ in
            print("пользователь нажал кнопку отмены")
        }))
        present(alertController, animated: true, completion: nil)
    }
}

