//
//  ViewController.swift
//  Pokedex
//
//  Created by Мулярчук Константин on 06.06.17.
//  Copyright © 2017 healthAndFitnes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collection: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collection.dataSource = self
        collection.delegate = self

    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PokeCell", for: indexPath) as? PokeCell {
            let pokemon = Pokemon(name: "pokemon", pokedexId: indexPath.row)
            cell.configureCell(pokemon: pokemon)
            return cell
        } else {
            return UICollectionViewCell()
        }
        
    }
   // func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
   //     <#code#>
  //  }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        <#code#>
    }


}

