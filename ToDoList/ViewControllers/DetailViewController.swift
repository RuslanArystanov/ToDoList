//
//  DetailViewController.swift
//  ToDoList
//
//  Created by Руслан Арыстанов on 26.11.2024.
//

import UIKit

class DetailViewController: UIViewController, UITextViewDelegate {

    @IBOutlet var noteTextView: UITextView!
    @IBOutlet var doneButton: UIBarButtonItem!
    var dataManger = DataManager.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        if noteTextView.text != "" {
            dataManger.notes.append(noteTextView.text)
        }
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
