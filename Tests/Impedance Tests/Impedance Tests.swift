import Impedance
import Testing

enum `Impedance Tests` {}

extension `Impedance Tests` {
    @Suite struct `Impedance holds kinds of quantity` {
        @Test func `Mechanical is in newton seconds per metre, of dimension mass: 1, time: -1`() {
            #expect(Impedance.Mechanical.dimension == Quantity.Dimension(mass: 1, time: -1))
            #expect(Impedance.Mechanical.amount(2.5).underlying == 2.5)
        }

        @Test func `Acoustic is in pascal seconds per cubic metre, of dimension length: -4, mass: 1, time: -1`() {
            #expect(Impedance.Acoustic.dimension == Quantity.Dimension(length: -4, mass: 1, time: -1))
            #expect(Impedance.Acoustic.amount(2.5).underlying == 2.5)
        }

        @Test func `Specific is in pascal seconds per metre, of dimension length: -2, mass: 1, time: -1`() {
            #expect(Impedance.Specific.dimension == Quantity.Dimension(length: -2, mass: 1, time: -1))
            #expect(Impedance.Specific.amount(2.5).underlying == 2.5)
        }
    }

    @Suite struct `Each impedance is a quotient of its parts` {
        @Test func `Their dimensions balance`() {
            #expect(Impedance.Mechanical.dimension == Force.dimension / Velocity.dimension)
            #expect(Impedance.Acoustic.dimension == Pressure.dimension / Flow.Volume.dimension)
            #expect(Impedance.Specific.dimension == Pressure.dimension / Velocity.dimension)
            #expect(Impedance.Specific.dimension == Density.dimension * Velocity.dimension)
        }

        @Test func `The quotients and the product`() {
            #expect(Force.newtons(6.0) / Velocity.amount(2.0) == Impedance.Mechanical.amount(3.0))
            #expect(Pressure.pascals(6.0) / Flow.Volume.amount(2.0) == Impedance.Acoustic.amount(3.0))
            #expect(Pressure.pascals(6.0) / Velocity.amount(2.0) == Impedance.Specific.amount(3.0))
            #expect(Density.amount(2.0) * Velocity.amount(3.0) == Impedance.Specific.amount(6.0))
            #expect(Velocity.amount(3.0) * Density.amount(2.0) == Impedance.Specific.amount(6.0))
        }
    }
}
