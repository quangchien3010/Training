//
//  ViewControllerH.swift
//  Training
//
//  Created by Chien on 6/4/18.
//  Copyright © 2018 Chien. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var searchCollections: UICollectionView!
    
    var employee = [Employee]()
    var currentEmployee = [Employee]() //update collection
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpEmployee()
        searchCollections.layoutCollection(numberOfItem: 2, padding: 10)
        
        
    }
    private func setUpEmployee(){
        employee.append(Employee(name: "Van tieu thu", image: "ACV1"))
        employee.append(Employee(name: "Hoan Dai Gia", image: "ACV3"))
        employee.append(Employee(name: "Nghia PM", image: "ACV2"))
        employee.append(Employee(name: "Hoan Dai Gia", image: "ACV3"))
        employee.append(Employee(name: "Van tieu thu", image: "ACV1"))
        employee.append(Employee(name: "Hoan Dai Gia", image: "ACV3"))
        
        currentEmployee = employee
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String){
        guard !searchText.isEmpty else {
            currentEmployee = employee
            searchCollections.reloadData()
            return
        }
        currentEmployee = employee.filter({ employ -> Bool in
            employ.name.contains(searchText)
        })
        searchCollections.reloadData()
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let img = segue.destination as? DetailViewController
//        if segue.identifier == "showdata" {
//            img?.imgVC = UIImage(named: currentEmployee[])
//        }
//    }
    
    
}
extension SearchViewController : UICollectionViewDataSource,UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return currentEmployee.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell" , for: indexPath) as! SearchCollectionViewCell
        
        cell.imgSearch.image = UIImage(named: currentEmployee[indexPath.row].image)
        cell.lbSearch.text = currentEmployee[indexPath.row].name
        
        return cell
    }
    
    
}


class Employee {
    let name : String
    let image : String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
    
}
