//
//  PDFKitView.swift
//  BookHack
//
//  Created by Rudolf Oganesyan on 26.04.2021.
//

import SwiftUI

import PDFKit
struct PDFKitView: View {
    var url: URL
    var body: some View {
        PDFKitRepresentedView(url)
            .navigationBarItems(trailing: NavigationLink(
                                    destination: RealityView(),
                                    label: {
                                        Text("Go to AR").font(.largeTitle)
                                    }))
    }
}

struct PDFKitRepresentedView: UIViewRepresentable {
    let url: URL
    init(_ url: URL) {
        self.url = url
    }
    
    func makeUIView(context: UIViewRepresentableContext<PDFKitRepresentedView>) -> PDFKitRepresentedView.UIViewType {
        let pdfView = PDFView()
        pdfView.document = PDFDocument(url: self.url)
        pdfView.autoScales = true
        
        return pdfView
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<PDFKitRepresentedView>) {
        // Update the view.
    }
}

//struct wre_Previews: PreviewProvider {
//    static var previews: some View {
//        PDFKitView()
//    }
//}


class RealityViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Add a background color a placerholder
        view.backgroundColor = .systemBlue
        //Comment out below this when previewing!
        // Create a new ARView
     //   let arView = ARView(frame: UIScreen.main.bounds)
        // Add the ARView to the view
     //   view.addSubview(arView)
        // Load the "Box" scene from the "Experience" Reality File
     //   let boxAnchor = try! Bolt.loadBox()
        // Add the box anchor to the scene
    //    arView.scene.anchors.append(boxAnchor)
    }
}
struct RealityView: View {
    var body: some View {
        RealityIntegratedViewController()
        .navigationBarTitle(Text(""), displayMode: .inline)
    }
}
struct RealityIntegratedViewController: UIViewControllerRepresentable {
    func makeUIViewController(context: UIViewControllerRepresentableContext<RealityIntegratedViewController>) -> RealityIntegratedViewController.UIViewControllerType {
        return RealityViewController()
    }
    func updateUIViewController(_ uiViewController: RealityViewController, context: UIViewControllerRepresentableContext<RealityIntegratedViewController>) {
    }
}
