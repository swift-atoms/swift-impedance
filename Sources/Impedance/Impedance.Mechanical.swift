extension Impedance {
    /// Mechanical impedance: force per velocity, stored in newton seconds per metre.
    public enum Mechanical {}
}

extension Impedance.Mechanical: Quantity.Kind {
    public static var dimension: Quantity.Dimension { Quantity.Dimension(mass: 1, time: -1) }
}

extension Impedance.Mechanical {
    /// An amount of this kind, its scalar in newton seconds per metre.
    public typealias Value<Scalar> = Tagged<Impedance.Mechanical, Scalar>
}
