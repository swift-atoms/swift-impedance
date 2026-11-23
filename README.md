# swift-impedance

Use this package when a value is one of the kinds of impedance. `Impedance` is a namespace; each kind nested in it is a kind of quantity of swift-quantity, and an amount of it is a `Tagged<Impedance.Kind, Scalar>`.

## Laws

- `Impedance.Mechanical` is mechanical impedance: force per velocity, stored in newton seconds per metre, of dimension mass: 1, time: -1; make an amount with `Impedance.Mechanical.amount(_:)`.
- `Impedance.Acoustic` is acoustic impedance: pressure per volume flow, stored in pascal seconds per cubic metre, of dimension length: -4, mass: 1, time: -1; make an amount with `Impedance.Acoustic.amount(_:)`.
- `Impedance.Specific` is specific acoustic impedance: pressure per velocity, stored in pascal seconds per metre, of dimension length: -2, mass: 1, time: -1; make an amount with `Impedance.Specific.amount(_:)`.
- Amounts of one kind add, scale and compare as swift-quantity gives every kind; they never mix with another kind, even one of the same dimension.
- A force over a velocity is a mechanical impedance.
- A pressure over a volume flow is an acoustic impedance, and a pressure over a velocity a specific one.
- A density times a velocity is a specific impedance (rho c, for the speed of sound), in either order.
