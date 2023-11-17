//
//  ViewController.swift
//  examel1evalEjerc2Di
//
//  Created by Montacer El Fazazi on 16/11/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, ProtocolVotacion {
 
    
    func obtenerInfo(info: Votacion) {
        if info.nombrePersonaje == "arya" {
            votosArya = 1
        }
        if info.nombrePersonaje == "sansa" {
            votosSansa = 1
        }
        if info.nombrePersonaje == "tyron" {
            votosTyron = 1
        }
        if info.nombrePersonaje == "john" {
            votosJohn = 1
        }
    }
    

    @IBOutlet weak var lbTyron: UILabel!
    @IBOutlet weak var lbJohn: UILabel!
    @IBOutlet weak var lbSansa: UILabel!
    @IBOutlet weak var lbArya: UILabel!
    @IBOutlet weak var tablaVotaciones: UITableView!
    
    var eleccion: String!
    var votosArya: Int!
    var votosSansa: Int!
    var votosJohn: Int!
    var votosTyron: Int!
    var listaVotaciones: [Votacion] = []
    var votacion: Votacion!

    
    var votante: String = "";

    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        /*
        lbArya.text  = "arya: \(votosAryaS!)"
        lbJohn.text  = "john: \(votosJohnS!)"
        lbTyron.text  = "tyron: \(votosTyronS!)"
        lbSansa.text  = "sansa: \(votosSansaS!)"
 */
        
        listaVotaciones = []
        tablaVotaciones.delegate = self
        tablaVotaciones.dataSource = self
        
        
    
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listaVotaciones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CELDA", for: indexPath) as!
        CeldaTableViewCell
        
        votacion = listaVotaciones[indexPath.row]
        
        celda.lbVotante.text = votacion.nombreVotante
        celda.lbPersonajeVotado.text = votacion.nombrePersonaje
        
        return celda
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "VOTACION" {
            let destino = segue.destination as!
            VotacionViewController
            destino.delegate = self
        }
    }

}

