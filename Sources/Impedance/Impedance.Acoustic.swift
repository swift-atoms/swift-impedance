extension Impedance {
    /// Acoustic impedance: pressure per volume flow, stored in pascal seconds per cubic metre.
    public enum Acoustic {}
}

extension Impedance.Acoustic: Quantity.Kind {
    public static var dimension: Quantity.Dimension { Quantity.Dimension(length: -4, mass: 1, time: -1) }
}

extension Impedance.Acoustic {
    /// An amount of this kind, its scalar in pascal seconds per cubic metre.
    public typealias Value<Scalar> = Tagged<Impedance.Acoustic, Scalar>
}
