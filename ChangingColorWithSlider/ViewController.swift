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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 15
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
    }

    // MARK: - IBActions
    @IBAction func redSliderAction() {
        redLabel.text = redSlider.value.formatted()
        changeViewBackgroundColor()
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = greenSlider.value.formatted()
        changeViewBackgroundColor()
    }
    
    
    @IBAction func blueSliderAction() {
        blueLabel.text = blueSlider.value.formatted()
        changeViewBackgroundColor()
    }
    
    // MARK: - Private methods
    private func setupRedSlider() {
        redSlider.value = 0.5
        redSlider.minimumTrackTintColor = .systemRed
    }
    
    private func setupGreenSlider() {
        greenSlider.value = 0.5
        greenSlider.minimumTrackTintColor = .systemGreen
    }
    
    private func setupBlueSlider() {
        blueSlider.value = 0.5
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
    
}

