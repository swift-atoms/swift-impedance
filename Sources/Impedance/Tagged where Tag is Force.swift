public import Quantity

extension Tagged::Tagged where Tag == Force, Underlying: FloatingPoint {
    /// The mechanical impedance that moves at `rhs` under this force.
    @inlinable
    public static func / (lhs: Self, rhs: Velocity.Value<Underlying>) -> Impedance.Mechanical.Value<Underlying> {
        Impedance.Mechanical.amount(lhs.underlying / rhs.underlying)
    }
}
