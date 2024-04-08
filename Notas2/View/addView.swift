//
//  addView.swift
//  Notas2
//
//  Created by Reales Rectoro Myles Clarence on 8/04/24.
//

import UIKit

class addView: UIViewController {

    @IBOutlet weak var boton: UIButton!
    @IBOutlet weak var fecha: UIDatePicker!
    @IBOutlet weak var nota: UITextView!
    @IBOutlet weak var titulo: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func guardar(_ sender: Any) {
        Modelo.shared.saveData(titulo: titulo.text ?? "", nota: nota.text, fecha: fecha.date)
    }
        

}
