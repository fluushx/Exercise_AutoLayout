//
//  ViewController.swift
//  Exercise_AutoLayout
//
//  Created by Felipe Ignacio Zapata Riffo on 03-08-21.
//

import UIKit

class ViewController: UIViewController {
    
    let bearImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(named: "bear_icon")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let descriptionLabel: UILabel = {
       let description =  UILabel()
        
        let attributedText =  NSMutableAttributedString(string: "El equipo fue fundado en Decatur en 1920 con el nombre de Decatur Staleys y es junto a los Arizona Cardinals una de las dos únicas franquicias fundadoras de la American Professional Football Association", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
            description.attributedText = attributedText
     
        
        attributedText.append(NSAttributedString(string: "\n\nEl equipo fue fundado en Decatur en 1920 con el nombre de Decatur Staleys y es junto a los Arizona Cardinals una de las dos únicas franquicias fundadoras de la American Professional Football Association", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13)]))
         
           description.attributedText = attributedText
 
//        description.font = UIFont.boldSystemFont(ofSize: 15)
        description.translatesAutoresizingMaskIntoConstraints = false
        description.numberOfLines = 0
        description.tintColor = .black
        description.textAlignment = .left
        description.adjustsFontSizeToFitWidth = true
        description.clipsToBounds = true
        return description
    }()
    

    
    let previousButton:UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Previous", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.setTitleColor(.gray, for: .normal)
        return button
    }()
    
    let NextButton:UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Next", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()
    
    let pageControl: UIPageControl = {
        let pc = UIPageControl()
        pc.currentPage = 0
        pc.numberOfPages = 4
        pc.translatesAutoresizingMaskIntoConstraints = false
        pc.pageIndicatorTintColor = .red
        pc.currentPageIndicatorTintColor = .blue
        return pc
    }()

    override func viewDidLoad() {
       super.viewDidLoad()
 
        view.addSubview(descriptionLabel)
        imageConstrains()
        setUpButton()
    }
     private func setUpButton(){
       
        let greenView = UIView()
        greenView.backgroundColor = .green
        let controlButtonStackView = UIStackView(arrangedSubviews: [previousButton,pageControl,NextButton])
        controlButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        controlButtonStackView.distribution = .fillEqually
        
        view.addSubview(controlButtonStackView)
        controlButtonStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -50).isActive = true
        controlButtonStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        controlButtonStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
    }
    
    func imageConstrains(){
        
        let topImageViewContainerView = UIView()
       
        view.addSubview(topImageViewContainerView)
        topImageViewContainerView.translatesAutoresizingMaskIntoConstraints = false
        topImageViewContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.4).isActive = true
        topImageViewContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topImageViewContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topImageViewContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageViewContainerView.addSubview(bearImageView)
        
        bearImageView.widthAnchor.constraint(equalToConstant: 180).isActive =  true
        bearImageView.heightAnchor.constraint(equalTo: topImageViewContainerView.heightAnchor, multiplier: 0.5).isActive = true
        bearImageView.centerXAnchor.constraint(equalTo: topImageViewContainerView.centerXAnchor).isActive = true
        bearImageView.centerYAnchor.constraint(equalTo: topImageViewContainerView.centerYAnchor).isActive = true
 
        descriptionLabel.topAnchor.constraint(equalTo: topImageViewContainerView.bottomAnchor).isActive = true
        descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
    }
 
}
