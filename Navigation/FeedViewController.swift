//
//  FeedViewController.swift
//  Navigation
//
//  Created by Nikita  on 10.02.2025.
//

import UIKit

class FeedViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Лента"
        
        let button = UIButton(type: .system)
        button.setTitle("Перейти к посту", for: .normal)
        button.addTarget(self, action: #selector(goToPost), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(button)

        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc func goToPost() {
        let postVC = PostViewController()
        let post = Post(title: "Заголовок поста")
        postVC.post = post
        navigationController?.pushViewController(postVC, animated: true)
    }
}
