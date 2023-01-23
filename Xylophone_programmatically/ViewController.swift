//
//  ViewController.swift
//  Xylophone_programmatically
//
//  Created by Vitali Martsinovich on 2023-01-23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    let stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.distribution = .fillEqually
        stack.spacing = 8
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    var buttonC: UIButton = {
       
        let button = UIButton()
        button.setTitle("C", for: .normal)
        button.backgroundColor = .red
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    var buttonD: UIButton = {
       
        let button = UIButton()
        button.setTitle("D", for: .normal)
        button.backgroundColor = .systemOrange
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    var buttonE: UIButton = {
       
        let button = UIButton()
        button.setTitle("E", for: .normal)
        button.backgroundColor = .systemYellow
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    var buttonF: UIButton = {
       
        let button = UIButton()
        button.setTitle("F", for: .normal)
        button.backgroundColor = .systemGreen
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    var buttonG: UIButton = {
       
        let button = UIButton()
        button.setTitle("G", for: .normal)
        button.backgroundColor = .systemIndigo
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    var buttonA: UIButton = {
       
        let button = UIButton()
        button.setTitle("A", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    var buttonB: UIButton = {
       
        let button = UIButton()
        button.setTitle("B", for: .normal)
        button.backgroundColor = .systemPurple
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(stackView)
        addButtonsToStack()
        setConsrtaints()
        
    }
    
    func addButtonsToStack() {
        
        stackView.addArrangedSubview(buttonC)
        stackView.addArrangedSubview(buttonD)
        stackView.addArrangedSubview(buttonE)
        stackView.addArrangedSubview(buttonF)
        stackView.addArrangedSubview(buttonG)
        stackView.addArrangedSubview(buttonA)
        stackView.addArrangedSubview(buttonB)
    }
    
    
    func playSound(soundName: String) {
        
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
    @objc func buttonPressed(sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)

        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            sender.alpha = 1.0
        }
    }
    
    
    func setConsrtaints() {
        
        NSLayoutConstraint.activate([
            
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            
            buttonC.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 10),
            buttonC.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -10),
            buttonC.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 10),
            
            buttonD.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 15),
            buttonD.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -15),
            
            buttonE.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 20),
            buttonE.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -20),
            
            buttonF.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 25),
            buttonF.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -25),
            
            buttonG.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 30),
            buttonG.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -30),
            
            buttonA.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 35),
            buttonA.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -35),
            
            buttonB.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 40),
            buttonB.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -40),

        ])
    }
    

}

