//
//  DetailViewController.swift
//  Periodic Table
//
//  Created by Nabil Haffar on 9/25/19.
//  Copyright © 2019 Nabil Haffar. All rights reserved.
//  Periodic Table Project
//  File for detailViewController

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var appearanceLbl: UILabel!
    @IBOutlet weak var atomicMassLbl: UILabel!
    @IBOutlet weak var categoryLbl: UILabel!
    @IBOutlet weak var colorLbl: UILabel!
    @IBOutlet weak var densityLbl: UILabel!
    @IBOutlet weak var discovered_byLbl: UILabel!
    @IBOutlet weak var boilLbl: UILabel!
    @IBOutlet weak var meltLbl: UILabel!
    @IBOutlet weak var molar_heatLbl: UILabel!
    @IBOutlet weak var named_byLbl: UILabel!
    @IBOutlet weak var numberLbl: UILabel!
    @IBOutlet weak var periodLbl: UILabel!
    @IBOutlet weak var phaseLbl: UILabel!
    @IBOutlet weak var symbolLbl: UILabel!
    @IBOutlet weak var xposLbl: UILabel!
    @IBOutlet weak var yposLbl: UILabel!
    @IBOutlet weak var shellsLbl: UILabel!
    @IBOutlet weak var electron_configurationLbl: UILabel!
    @IBOutlet weak var sourceLbl: UILabel!
    @IBOutlet weak var electron_affinityLbl: UILabel!
    @IBOutlet weak var electronegativity_paulingLbl: UILabel!
    @IBOutlet weak var ionization_energyLbl: UILabel!
    @IBOutlet weak var spectral_imgLbl: UILabel!
    @IBOutlet weak var summaryLbl: UILabel!
    
    func configureView() {
        // Update the user interface for the detail item.
        
        if let detail = detailItem {
           
            if let label = nameLbl {
                label.text = ("Name: ") + detail.name
            }
            
            
            if let label = appearanceLbl{
                if(detail.appearance != nil){
                label.text = ("Appearance: ") + "\(detail.appearance!)"
                }
                else
                {
                    label.text = ("Appearance: Nil")
                }
            }
            if let label = atomicMassLbl{
                  label.text = ("Atomic Mass: ") + String (detail.atomic_mass)
            }
          
            
            if let label = categoryLbl{
                if (detail.category != nil){

                 label.text = ("Category : ") + "\( detail.category!)"
                }
                else {
                    label.text = ("Category: Nil")
                }
            }
            if let label = colorLbl{
                if (detail.color != nil){
                label.text = ("Color: ") + "\(detail.color!)"
                }
                else {
                    label.text = ("Color: nil")
                }
            }
            if let label = densityLbl{
                if (detail.density != nil){
                    label.text =  ("Density: ") + "\(detail.density!)"
                }
                else{
                label.text = ("Density: nil")
                }
                }
            if let label = discovered_byLbl{
                if( detail.discovered_by != nil)
                {
                label.text = ("Discovered by: ") + "\(detail.discovered_by!)"
                }
                else {
                label.text = ("Discovered by: Nil")
                }
                }
            if let label = boilLbl{
                if(detail.boil != nil){
                label.text = ("Boil: ") + "\(detail.boil!)"
            }
                else {
                label.text = ("Boil: Nil")
                }
                }
            if let label = meltLbl{
                if (detail.melt != nil)
                {
                label.text = ("Melt: ") + "\(detail.melt!) "
                } else {
                    label.text = ("Melt: nil")
                    
                }
                }
            if let label = molar_heatLbl{
                if(detail.molar_heat != nil)
                {
                label.text = ("Molar Heat: ") + "\(detail.molar_heat!)"
                }
                else{
                    label.text  = ("Molar Heat: Nil")
            
                }
                
            }
            
            if let label = named_byLbl{
                if( detail.named_by != nil)
                {
                label.text = ("Named By: ") + "\( detail.named_by!)"
                }
                else {
                    label.text = ("Named By: Nil ")
                }
                }
            if let label = numberLbl{
                if (detail.number != nil){
                label.text = ("Number: ") + "\(detail.number!)"
                }
                else {
                    label.text = ("Number: nil")
                    
                }
            }
            if let label = periodLbl{
                if (detail.period != nil){
                
                label.text = ("Period: ") + "\(detail.period!)"
                }
                else
                {
                    label.text = ("Period: Nil")
                    }
            }
            if let label = phaseLbl{
                if ( detail.phase != nil){
                label.text = ("Phase: ") + detail.phase!
                }
                else {
                    label.text = ("Phase: nil")
                }
            }
            if let label = symbolLbl{
                if (detail.symbol != nil){
                label.text = ("Symbol: " ) + "\(detail.symbol!)"
            }
                else {
                    
                    label.text = ("Symbol: nil")
                }
            }
            if let label = xposLbl{
                if( detail.xpos != nil){
                    
                
                label.text =  ("XPOS: ") + "\(detail.xpos!)"
                }
                else {
                    label.text = ("Xpos: nil")
                }
                
            }
            if let label = yposLbl{
                if (detail.ypos != nil)
                {
                label.text = ("YPOS: ") + "\( detail.ypos!) "
                }
                else {
                    
                    label.text = ("Ypos: nil")
                }
                
            }
            if let label = shellsLbl{
                if ( detail.shells != nil)
                {
                label.text = ("Shells: ") +  "\( detail.shells!)"
                }
                else {
                    label.text = ("Shells: Nil ")
                }
            }
            if let label = electron_configurationLbl{
                if (detail.electron_configuration != nil)
                {
                label.text = ("Electron Configuration: ") + "\( detail.electron_configuration!)"
                }
                else {
                    label.text = ("Electron Configuration: Nil")
                }
                
            }
            if let label = sourceLbl{
                if (detail.source != nil)
                {
                label.text = ("Source: ") + "\(detail.source!)"
                }
                else
                {
                    label.text = ("Source: Nil " )
                    
                }
            }
            if let label = electron_affinityLbl{
                if(detail.electron_affinity != nil)
                {
                label.text = ("Electron Affinity: ") + "\(detail.electron_affinity!)"
                }
                else {
                    label.text = ("Electron Affinity: nil")
                    
                }
            }
            if let label = electronegativity_paulingLbl{
                if (detail.electronegativity_pauling != nil)
                {
                label.text = ("Electronegativity Pauling: ") + "\(detail.electronegativity_pauling!)"
                }
                else {
                    label.text = ("Electronegativity Pauling: nil")
                }
            }
            if let label = ionization_energyLbl{
                if(detail.ionization_energies != nil)
                {
                label.text = ("Ionization Energy: ") + "\(detail.ionization_energies!) "
                }
                else {
                    label.text = ("Ionization Energy: nil")
                }
            }
            if let label = spectral_imgLbl{
                if (detail.spectral_img != nil)
                {
                label.text = ("Spectral Image: ") + "\(detail.spectral_img!)"
                }
                else {
                    
                    label.text = ("Spectral Image: nil")
                }
            }
            if let label = summaryLbl{
                if(detail.summary != nil){
                label.text = ("Summary : ") + detail.summary!
                }
                else {
                    label.text = ("Summary: nil")
                }
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.scrollView.addSubview(stackView)
        scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor)
        scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        scrollView.topAnchor.constraint(equalTo: self.view.topAnchor)
        scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        self.stackView.translatesAutoresizingMaskIntoConstraints = false
        self.stackView.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor).isActive = true;
        self.stackView.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor).isActive = true;
        self.stackView.topAnchor.constraint(equalTo: self.scrollView.topAnchor).isActive = true;
        self.stackView.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor).isActive = true;
        self.stackView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        configureView()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
       
        self.scrollView.contentSize = view.frame.size
        
        
    }

    var detailItem: Element? {
        didSet {
            // Update the view.
        //    nameLbl?.text =
            self.loadView()
            configureView()
        }
    }


}

