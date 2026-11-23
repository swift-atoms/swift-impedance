public import Quantity

extension Tagged::Tagged where Tag == Density, Underlying: Numeric {
    /// The specific impedance of a medium of this density with the velocity `rhs`.
    @inlinable
    public static func * (lhs: Self, rhs: Velocity.Value<Underlying>) -> Impedance.Specific.Value<Underlying> {
        Impedance.Specific.amount(lhs.underlying * rhs.underlying)
    }
}
