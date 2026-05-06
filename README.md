# packet-model-metric-grid

`packet-model-metric-grid` explores ml utilities with a small Haskell codebase and local fixtures. The technical goal is to create a Haskell reference implementation for metric workflows, centered on constraint solving, bounded scenario files, and conflict explanations.

## Use Case

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how feature drift and metric stability should influence a review result.

## Packet Model Metric Grid Review Notes

The first comparison I would make is `explainability` against `window width` because it shows where the rule is most opinionated.

## Highlights

- `fixtures/domain_review.csv` adds cases for feature drift and window width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/packet-model-metric-walkthrough.md` walks through the case spread.
- The Haskell code includes a review path for `explainability` and `window width`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `feature drift`, `window width`, `metric stability`, and `explainability`.

The Haskell implementation avoids hidden state so fixture changes are easy to reason about.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Future Work

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
