//
//  VotacionViewController.swift
//  examel1evalEjerc2Di
//
//  Created by Montacer El Fazazi on 16/11/2023.
//

import UIKit

class VotacionViewController: UIViewController {

    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var lbEleccion: UILabel!
    var delegate: ProtocolVotacion?
    var eleccionUser: String?
    var nombreUser: String?
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func btnArya(_ sender: Any) {
        eleccionUser = "arya"
    }
    
    @IBAction func btnSansa(_ sender: Any) {
        eleccionUser = "sansa"
    }
    
    @IBAction func btnJohn(_ sender: Any) {
        eleccionUser = "john"
    }
    
    @IBAction func btnTyron(_ sender: Any) {
        eleccionUser = "tyron"
    }
    
    @IBAction func btnVotar(_ sender: Any) {
        nombreUser = txtNombre.text!
        if eleccionUser! == "" || nombreUser! == "" {
            alerError(titulo: "error", mensaje: "faltan datos")
        }else{
            var votacion = Votacion(nombreVotante: txtNombre.text!, nombrePersonaje: eleccionUser!)
            delegate?.obtenerInfo(info: votacion)
            
            self.dismiss(animated: true, completion: nil)
            
        }
    }
    
    func alerError(titulo: String, mensaje: String){
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "ok", style: .destructive, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
