//
//  ViewController.swift
//  transposeApp
//
//  Created by Hannah Smith on 7/30/21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    @IBOutlet weak var transpose: UIButton!
    
    @IBOutlet weak var original: UITextField!
    let notes = ["A","Ab", "Bb", "B", "C", "C#", "Db", "D", "E", "Eb", "F", "F#", "Gb", "G", "G#"]
    let options = ["C Instrument", "Bb Instrument", "Eb Instrument", "F Instrument"]
    
    var firstPickerView = UIPickerView()
    var secondPickerView = UIPickerView()
    
    @IBOutlet weak var instrument: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        original.inputView = firstPickerView
        instrument.inputView = secondPickerView
        // Do any additional setup after loading the view.
        firstPickerView.delegate = self 
        secondPickerView.delegate = self
        firstPickerView.dataSource = self
        secondPickerView.dataSource = self
        //original.inputView = pickerView
        //instrument.inputView = secondPickerView
        original.textAlignment = .center
        instrument.textAlignment = .center
        original.placeholder = "Select pitch"
        instrument.placeholder = "Select instrument"
        firstPickerView.tag = 1
        secondPickerView.tag = 2
        transpose.layer.cornerRadius = 25.0
        
    }
    //original note
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView.tag {
        case 1:
            return notes.count
        case 2:
            return options.count
        default:
            return 1
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag {
        case 1:
            return notes[row]
        case 2:
            return options[row]
        default:
            return "data not found"
        }
       
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch pickerView.tag {
        case 1:
            original.text = notes[row]
            original.resignFirstResponder()
        case 2:
            instrument.text = options[row]
            instrument.resignFirstResponder()
        default:
            return 
        }
        
        
    }
    
    
    @IBAction func transpose(_ sender: UIButton) {
        let pitch = original.text!
        var note = ""
        let key = instrument.text!
        if (pitch == "A") {
            if (key == "Bb Instrument"){
                note = "B"
            }
                else if (key == "Eb Instrument") {
                    note = "Gb"
                }
                else if (key == "F Instrument") {
                    note = "E"
                }
                else {
                    note = "A" 
                }
        }
        if (pitch == "Ab") {
            if (key == "Bb Instrument"){
                note = "Bb"
            }
                else if (key == "Eb Instrument") {
                    note = "F"
                }
                else if (key == "F Instrument") {
                    note = "Eb"
                }
                else {
                    note = "Ab"
                }
        }
        if (pitch == "Bb") {
            if (key == "Bb Instrument"){
                note = "C"
            }
                else if (key == "Eb Instrument") {
                    note = "G"
                }
                else if (key == "F Instrument") {
                    note = "F"
                }
                else {
                    note = "Bb"
                }
        }
        if (pitch == "B") {
            if (key == "Bb Instrument"){
                note = "Db"
            }
                else if (key == "Eb Instrument") {
                    note = "Ab"
                }
                else if (key == "F Instrument") {
                    note = "Gb"
                }
                else {
                    note = "B"
                }
        }
        if (pitch == "C") {
            if (key == "Bb Instrument"){
                note = "D"
            }
                else if (key == "Eb Instrument") {
                    note = "A"
                }
                else if (key == "F Instrument") {
                    note = "G"
                }
                else {
                    note = "C"
                }
        }
        if (pitch == "C#") {
            if (key == "Bb Instrument"){
                note = "Eb"
            }
                else if (key == "Eb Instrument") {
                    note = "Bb"
                }
                else if (key == "F Instrument") {
                    note = "Ab"
                }
                else {
                    note = "C#"
                }
        }
        if (pitch == "Db") {
            if (key == "Bb Instrument"){
                note = "Eb"
            }
                else if (key == "Eb Instrument") {
                    note = "Bb"
                }
                else if (key == "F Instrument") {
                    note = "Ab"
                }
                else {
                    note = "Db"
                }
        }
        if (pitch == "D") {
            if (key == "Bb Instrument"){
                note = "E"
            }
                else if (key == "Eb Instrument") {
                    note = "B"
                }
                else if (key == "F Instrument") {
                    note = "A"
                }
                else {
                    note = "D"
                }
        }
        if (pitch == "E") {
            if (key == "Bb Instrument"){
                note = "Gb"
            }
                else if (key == "Eb Instrument") {
                    note = "Db"
                }
                else if (key == "F Instrument") {
                    note = "B"
                }
                else {
                    note = "E"
                }
        }
        if (pitch == "Eb") {
            if (key == "Bb Instrument"){
                note = "F"
            }
                else if (key == "Eb Instrument") {
                    note = "C"
                }
                else if (key == "F Instrument") {
                    note = "Bb"
                }
                else {
                    note = "Eb"
                }
        }
        if (pitch == "F") {
            if (key == "Bb Instrument"){
                note = "G"
            }
                else if (key == "Eb Instrument") {
                    note = "D"
                }
                else if (key == "F Instrument") {
                    note = "C"
                }
                else {
                    note = "F"
                }
        }
        if (pitch == "F#") {
            if (key == "Bb Instrument"){
                note = "Ab"
            }
                else if (key == "Eb Instrument") {
                    note = "Eb"
                }
                else if (key == "F Instrument") {
                    note = "Db"
                }
                else {
                    note = "F#"
                }
        }
        if (pitch == "Gb") {
            if (key == "Bb Instrument"){
                note = "Ab"
            }
                else if (key == "Eb Instrument") {
                    note = "Eb"
                }
                else if (key == "F Instrument") {
                    note = "Db"
                }
                else {
                    note = "Gb"
                }
        }
        if (pitch == "G") {
            if (key == "Bb Instrument"){
                note = "A"
            }
                else if (key == "Eb Instrument") {
                    note = "E"
                }
                else if (key == "F Instrument") {
                    note = "D"
                }
                else {
                    note = "G"
                }
        }
        let alertController = UIAlertController(title: "Your transposed pitch is", message: note, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
    }
    
}

