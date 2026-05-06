# Packet Model Metric Grid Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | feature drift | 208 | ship |
| stress | window width | 155 | ship |
| edge | metric stability | 186 | ship |
| recovery | explainability | 223 | ship |
| stale | feature drift | 214 | ship |

Start with `recovery` and `stress`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around window width and explainability.
