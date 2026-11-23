extension Impedance {
    /// Specific acoustic impedance: pressure per velocity, stored in pascal seconds per metre.
    public enum Specific {}
}

extension Impedance.Specific: Quantity.Kind {
    public static var dimension: Quantity.Dimension { Quantity.Dimension(length: -2, mass: 1, time: -1) }
}

extension Impedance.Specific {
    /// An amount of this kind, its scalar in pascal seconds per metre.
    public typealias Value<Scalar> = Tagged<Impedance.Specific, Scalar>
}
