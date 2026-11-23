public import Quantity

extension Tagged::Tagged where Tag == Pressure, Underlying: FloatingPoint {
    /// The acoustic impedance of this pressure driving the flow `rhs`.
    @inlinable
    public static func / (lhs: Self, rhs: Flow.Volume.Value<Underlying>) -> Impedance.Acoustic.Value<Underlying> {
        Impedance.Acoustic.amount(lhs.underlying / rhs.underlying)
    }
}

extension Tagged::Tagged where Tag == Pressure, Underlying: FloatingPoint {
    /// The specific impedance of this pressure driving the velocity `rhs`.
    @inlinable
    public static func / (lhs: Self, rhs: Velocity.Value<Underlying>) -> Impedance.Specific.Value<Underlying> {
        Impedance.Specific.amount(lhs.underlying / rhs.underlying)
    }
}
