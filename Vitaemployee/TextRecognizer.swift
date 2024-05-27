//
//  TextRecognizer.swift
//  Nyobalagiii
//
//  Created by Andini Malavika on 22/05/24.
//

import Foundation
import Vision
import VisionKit

class TextRecognizer {
    let cameraScan: VNDocumentCameraScan
    var recognizedTextArray: [String] = []

    init(cameraScan: VNDocumentCameraScan) {
        self.cameraScan = cameraScan
    }

    private let queue = DispatchQueue(label: "scan-codes", qos: .default, attributes: [], autoreleaseFrequency: .workItem)

    func recognizeText(withCompletionHandler completionHandler: @escaping ([String]) -> Void) {
        queue.async {
            let images = (0..<self.cameraScan.pageCount).compactMap {
                self.cameraScan.imageOfPage(at: $0).cgImage
            }
            
            let imagesAndRequests = images.map { (image: $0, request: VNRecognizeTextRequest()) }
            _ = imagesAndRequests.map { image, request -> String in
                let handler = VNImageRequestHandler(cgImage: image, options: [:])
                
                do {
                    try handler.perform([request])
                    guard let observations = request.results else { return "" }
                    
                    let recognizedText = observations.compactMap { $0.topCandidates(1).first?.string }.joined(separator: "\n")
                    self.recognizedTextArray.append(recognizedText)
                    return recognizedText
                    
                } catch {
                    print(error)
                    return ""
                }
            }
            
            DispatchQueue.main.async {
                completionHandler(self.recognizedTextArray)
            }
        }
    }
}
