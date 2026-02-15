//
//  RouraIODesign.swift
//  RouraIOSDK
//
//  Created by Christopher J. Roura on 2/15/26.
//

import RIODesignSystem
import SwiftUI

public enum RouraIODesign {

    @MainActor public static func configure() {
    }

    public static let buttonTheme = RouraIOButtonTheme()
    public static let textFieldTheme = RouraIOTextFieldTheme()
}


// MARK: - RouraIOButtonTheme

public struct RouraIOButtonTheme: RIOButtonTheme {

    // MARK: Colors

    public func foregroundColor(rank: RIOButtonRank, variant: RIOButtonVariant) -> Color {

        switch rank {
        case .primary:
            switch variant {
            case .critical, .default: .whitePrimary
            case .neutral:            .foregroundInversePrimary
            case .glass:              .whitePrimary
            }

        case .secondary, .tertiary:
            switch variant {
            case .critical: .redPrimary
            case .default:  .bluePrimary
            case .neutral:  .foregroundPrimary
            case .glass:    .whitePrimary
            }
        }
    }

    public func backgroundColor(rank: RIOButtonRank, variant: RIOButtonVariant) -> Color {

        switch rank {
        case .primary:
            switch variant {
            case .critical: .redPrimary
            case .default:  .bluePrimary
            case .neutral:  .foregroundPrimary
            case .glass:    .backgroundInversePrimary.opacity(0.6)
            }

        case .secondary:
            switch variant {
            case .glass: .whitePrimary.opacity(0.1)
            default:     .backgroundPrimary
            }

        case .tertiary:
            .clear
        }
    }

    public func borderColor(variant: RIOButtonVariant) -> Color {

        switch variant {
        case .critical: .redPrimary
        case .default:  .bluePrimary
        case .neutral:  .foregroundSecondary
        case .glass:    .whitePrimary.opacity(0.25)
        }
    }

    // MARK: Typography

    public func font(rank: RIOButtonRank, size: RIOStandardButtonSize) -> Font {
        let style: RouraFontStyle = switch rank {
        case .primary, .secondary:
            switch size {
            case .tiny:      .captionBold
            case .condensed: .bodyBold
            case .standard:  .h5Bold
            }
        case .tertiary:
            switch size {
            case .tiny:      .caption
            case .condensed: .body
            case .standard:  .h5
            }
        }
        return .rouraFont(style, fontFamily: .nunito)
    }

    // MARK: Layout

    public var cornerRadius: CGFloat { CornerRadius.medium }
    public var borderWidth: CGFloat { BorderWidth.hairline }
    public var spacing: CGFloat { Spacing.small }

    public func standardButtonHeight(size: RIOStandardButtonSize) -> CGFloat {

        switch size {
        case .tiny:      HitTarget.compact
        case .condensed: HitTarget.minimum
        case .standard:  HitTarget.comfortable
        }
    }

    public func iconButtonDimension(size: RIOIconButtonSize) -> CGFloat {

        switch size {
        case .tiny:      HitTarget.compact
        case .condensed: HitTarget.minimum
        case .standard:  HitTarget.comfortable
        }
    }

    public func iconImageScale(size: RIOIconButtonSize) -> CGFloat {

        switch size {
        case .tiny:      IconSize.extraSmall
        case .condensed: IconSize.small
        case .standard:  IconSize.medium
        }
    }

    // MARK: Interaction

    public var pressedOpacity: CGFloat { 0.4 }

    public func standardButtonMaxWidth(rank: RIOButtonRank) -> CGFloat? {

        switch rank {
        case .primary, .secondary: .infinity
        case .tertiary: nil
        }
    }
}


// MARK: - RouraIOTextFieldTheme

public struct RouraIOTextFieldTheme: RIOTextFieldTheme {

    // MARK: Colors

    public func foregroundColor(state: RIOTextFieldState) -> Color {

        switch state {
        case .idle, .focused: .foregroundPrimary
        case .error:          .foregroundPrimary
        case .disabled:       .foregroundSecondary
        }
    }

    public func placeholderColor(state: RIOTextFieldState) -> Color {

        switch state {
        case .idle, .focused, .error: .foregroundSecondary
        case .disabled:               .foregroundSecondary
        }
    }

    public func backgroundColor(state: RIOTextFieldState) -> Color {

        switch state {
        case .idle, .focused, .error: .backgroundPrimary
        case .disabled:               .backgroundRecessed
        }
    }

    public func borderColor(state: RIOTextFieldState) -> Color {

        switch state {
        case .idle:     .foregroundSecondary
        case .focused:  .bluePrimary
        case .error:    .redPrimary
        case .disabled: .foregroundSecondary
        }
    }

    // MARK: Typography

    public func font(size: RIOTextFieldSize) -> Font {
        let style: RouraFontStyle = switch size {
        case .tiny:      .caption
        case .condensed: .body
        case .standard:  .h5
        }
        return .rouraFont(style, fontFamily: .nunito)
    }

    public func promptFont(size: RIOTextFieldSize) -> Font {
        let style: RouraFontStyle = switch size {
        case .tiny:      .caption
        case .condensed: .body
        case .standard:  .h5
        }
        return .rouraFont(style, fontFamily: .nunito)
    }

    // MARK: Layout

    public var cornerRadius: CGFloat { CornerRadius.medium }

    public func borderWidth(state: RIOTextFieldState) -> CGFloat {

        switch state {
        case .idle, .disabled: BorderWidth.hairline
        case .focused, .error: BorderWidth.medium
        }
    }

    public func height(size: RIOTextFieldSize) -> CGFloat {

        switch size {
        case .tiny:      HitTarget.compact
        case .condensed: HitTarget.minimum
        case .standard:  HitTarget.comfortable
        }
    }

    public var horizontalPadding: CGFloat { Padding.large }
    public var spacing: CGFloat { Spacing.small }
    public var accessoryInset: CGFloat { Padding.large }
    public var accessorySpacing: CGFloat { Spacing.small }
}
