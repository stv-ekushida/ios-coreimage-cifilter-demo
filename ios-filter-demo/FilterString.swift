//
//  FilterString.swift
//  ios-filter-demo
//
//  Created by Eiji Kushida on 2017/04/14.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//

import Foundation

final class FilterString {

    /// フィルターのパターンを取得する
    ///
    /// - Returns: フィルターのパターン一覧
    static func patterns() -> [String] {

        return [
            "CIAreaAverage",
            "CIAreaMaximum",
            "CIAreaMaximumAlpha",
            "CIAreaMinimum",
            "CIAreaMinimumAlpha",
            "CIBoxBlur",
            "CICircularWrap",
            "CICMYKHalftone",
            "CIColumnAverage",
            "CIComicEffect",
            "CIConvolution7X7",
            "CICrystallize",
            "CIDepthOfField",
            "CIDiscBlur",
            "CIDisplacementDistortion",
            "CIDroste",
            "CIEdges",
            "CIEdgeWork",
            "CIGlassLozenge",
            "CIHeightFieldFromMask",
            "CIHexagonalPixellate",
            "CIKaleidoscope",
            "CILineOverlay",
            "CIMedianFilter",
            "CIMotionBlur",
            "CINoiseReduction",
            "CIOpTile",
            "CIPageCurlTransition",
            "CIPageCurlWithShadowTransition",
            "CIParallelogramTile",
            "CIPointillize",
            "CIRippleTransition",
            "CIRowAverage",
            "CIShadedMaterial",
            "CISpotColor",
            "CISpotLight",
            "CIStretchCrop",
            "CITorusLensDistortion",
            "CITriangleTile",
            "CIZoomBlur"
        ]
    }
}
