//
//  PostViewController.swift
//  Navigation
//
//  Created by Nikita  on 10.02.2025.
//


import UIKit

struct Post {
    let title: String
}

class PostViewController: UIViewController {
    
    var post: Post?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        title = post?.title
        
        let barButton = UIBarButtonItem(title: "Информация", style: .plain, target: self, action: #selector(showInfo))
        navigationItem.rightBarButtonItem = barButton
    }

    @objc func showInfo() {
        let infoVC = InfoViewController()
        present(infoVC, animated: true, completion: nil)
    }
}
