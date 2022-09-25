//
//  ViewController.swift
//  ChangingColorWithSlider
//
//  Created by Anton Boev on 24.09.2022.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var userColorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 15
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
    }

    // MARK: - IBActions
    @IBAction func redSliderAction() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        changeViewBackgroundColor()
        showNameOfUserColor()
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        changeViewBackgroundColor()
        showNameOfUserColor()
    }
    
    
    @IBAction func blueSliderAction() {
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        changeViewBackgroundColor()
        showNameOfUserColor()
    }
    
    @IBAction func resetButton() {
        redSlider.setValue(0, animated: true)
        redLabel.text = "0.00"
        greenSlider.setValue(0, animated: true)
        greenLabel.text = "0.00"
        blueSlider.setValue(0, animated: true)
        blueLabel.text = "0.00"
        mainView.backgroundColor = .white
        userColorLabel.text = "Your color is white"
    }
    
    @IBAction func randomColorButton() {
        redSlider.value = Float.random(in: 0.00...1)
        greenSlider.value = Float.random(in: 0.00...1)
        blueSlider.value = Float.random(in: 0.00...1)
        changeViewBackgroundColor()
        showNameOfUserColor()
    }
    
    
    // MARK: - Private methods
    private func setupRedSlider() {
        redSlider.minimumTrackTintColor = .systemRed
    }
    
    private func setupGreenSlider() {
        greenSlider.minimumTrackTintColor = .systemGreen
    }
    
    private func setupBlueSlider() {
        blueSlider.minimumTrackTintColor = .systemBlue
    }
    
    private func changeViewBackgroundColor() {
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func showNameOfUserColor() {
        userColorLabel.text = "Your color is \(mainView.backgroundColor?.accessibilityName ?? "")"
    }
}


