//
//  PhotoViewerViewController.swift
//  Messenger
//
//  Created by Ivan Potapenko on 24.10.2021.
//

import UIKit
import SDWebImage

final class PhotoViewerViewController: UIViewController {
    private let url: URL

    init(with url: URL) {
        self.url = url
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let imageView: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Photo"
        navigationItem.largeTitleDisplayMode = .never
        view.backgroundColor = .black
        addSubview()
        imageView.sd_setImage(with: url, completed: nil)
    }
    
    func addSubview() {
        view.addSubview(imageView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imageView.frame = view.bounds
    }
}
