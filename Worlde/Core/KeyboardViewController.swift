//
//  KeyboardViewController.swift
//  Worlde
//
//  Created by Pavlo Shnurenko on 02.03.2024.
//

import UIKit

class KeyboardViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource {

    let letters = ["qwertyuiop","asdfghjkl","zxcvbnm"]
    private var keys: [[Character]] = []
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 2
        let collectionVIew = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionVIew.translatesAutoresizingMaskIntoConstraints = false
        collectionVIew.backgroundColor = .yellow
        collectionVIew.register(KeyCell.self, forCellWithReuseIdentifier: KeyCell.identifier)
        return collectionVIew
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        view.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}

extension KeyboardViewController {
    
}
