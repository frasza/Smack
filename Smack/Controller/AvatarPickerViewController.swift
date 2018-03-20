//
//  AvatarPickerViewController.swift
//  Smack
//
//  Created by Žan Fras on 20/03/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit

class AvatarPickerViewController: UIViewController {

    //MARK: - Outlets
    /***************************************************************/
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - Actions
    /***************************************************************/
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func segmentControlPressed(_ sender: UISegmentedControl) {
        
    }
}

//MARK: - Collection View Extension
/***************************************************************/
extension AvatarPickerViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "avatarCell", for: indexPath) as? AvatarCell {
            return cell
        } else {
            return AvatarCell()
        }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 28
    }

}
