//
//  MainController.swift
//  wonders-of-nature
//
//  Created by Tommi Lehtisaari on 1.12.2020.
//

import UIKit

class MainController: UIViewController {
    
    var tableView = UITableView()
    var natureCards: [NatureCard] = []
    
    struct Cells {
        static let natureCardCell = "NatureCardCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Wonders of the Nature"
        natureCards = fetchData()
        configureTableView()
        
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 100
        tableView.register(NatureCardCell.self, forCellReuseIdentifier: Cells.natureCardCell)
        tableView.pin(to: view)
    }
    

}

extension MainController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return natureCards.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailsVC = DetailsViewController()
        detailsVC.set(natureCard: natureCards[indexPath.row])
        
        navigationController?.pushViewController(detailsVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.natureCardCell) as! NatureCardCell
        cell.set(natureCard: natureCards[indexPath.row])
        return cell
    }
    
}

extension MainController {
    
    func fetchData() -> [NatureCard] {
        return [
            NatureCard(image: NatureImages.cliff, title: "Cliff of Arizona"),
            NatureCard(image: NatureImages.desert, title: "Sahara desert is the largest there is"),
            NatureCard(image: NatureImages.waterfall, title: "In the deep jungle, waaterfall can be found"),
            NatureCard(image: NatureImages.frost, title: "Frost is in its best state when it has just formed"),
            NatureCard(image: NatureImages.palms, title: "Palm trees means relax"),
            NatureCard(image: NatureImages.snowCamp, title: "Explorers way goes where ever it goes"),
            NatureCard(image: NatureImages.dolphins, title: "Dolphins can be found in the deep blue oceans"),
            NatureCard(image: NatureImages.snowyMountains, title: "In the top of the mountain")
        ]
    }
}

import SwiftUI
struct MainPreview: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        func makeUIViewController(context: Context) -> some UIViewController {
            let navController = UINavigationController(rootViewController: MainController())
            navController.navigationBar.prefersLargeTitles = true
            return navController
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}
