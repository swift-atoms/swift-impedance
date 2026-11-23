public import Quantity

extension Tagged::Tagged where Tag == Velocity, Underlying: Numeric {
    /// The specific impedance of a medium of the density `rhs` with this velocity.
    @inlinable
    public static func * (lhs: Self, rhs: Density.Value<Underlying>) -> Impedance.Specific.Value<Underlying> {
        Impedance.Specific.amount(lhs.underlying * rhs.underlying)
    }
}
