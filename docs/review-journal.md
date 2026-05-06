# Review Journal

The cases below are the review handles I would use before changing the implementation.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its ml utilities focus without claiming live deployment or external usage.

## Cases

- `baseline`: `feature drift`, score 208, lane `ship`
- `stress`: `window width`, score 155, lane `ship`
- `edge`: `metric stability`, score 186, lane `ship`
- `recovery`: `explainability`, score 223, lane `ship`
- `stale`: `feature drift`, score 214, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.
