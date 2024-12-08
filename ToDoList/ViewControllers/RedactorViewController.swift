//
//  RedactorViewController.swift
//  ToDoList
//
//  Created by Руслан Арыстанов on 28.11.2024.
//

import UIKit

class RedactorViewController: UIViewController, UITextViewDelegate {

    @IBOutlet var noteTextView: UITextView!
    @IBOutlet var doneButton: UIBarButtonItem!
    var dataManger = DataManager.shared
    var text = ""
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        noteTextView.text = text
        noteTextView.delegate = self
    }
    
    @IBAction func doneButtonPressed(_ sender: Any) {
        noteTextView.endEditing(true)
        doneButton.isHidden = true
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        doneButton.isHidden = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        dataManger.notes[index] = noteTextView.text
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
