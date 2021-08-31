//
//  HomeViewController.swift
//  filRouge
//
//  Created by Joris Thiery on 09/06/2021.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var centeredLabel: UILabel!

  
    @IBOutlet weak var collectionMenu: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Accueil"
        centeredLabel.text = "Accueil"
       // view.ui
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension HomeViewController : UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionCell = collectionMenu.dequeueReusableCell(withReuseIdentifier: "CollectionMenuCell", for: indexPath) as! CollectionMenuCell
        collectionCell.layer.cornerRadius = 8
        
        return collectionCell
    }
    
    
    
}
