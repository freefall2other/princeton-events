# princeton-events

Tools for finding public events at Princeton University and in the town of Princeton.

Live page: https://freefall2other.github.io/princeton-events/

## What's here

- `index.html` — the source link-check page: all 106 catalogued event pages, with the proposed top 20 highlighted, and Works / Broken / Skip verdicts plus notes per link. Verdicts are saved in browser storage on this site (per device for now) and can be exported as CSV or JSON.
- `data/sources.json` — the catalog rows the page is built from.
- `data/Princeton_Events_Catalog_v2.xlsx` — the full catalog with platform, pagination, audience, and verification notes.
- `.nojekyll` — tells GitHub Pages to serve files as-is.

## Setting up GitHub Pages (once)

1. Push this folder to `main`.
2. In the repo on GitHub: Settings → Pages → Build and deployment → Source: "Deploy from a branch" → Branch: `main`, folder `/ (root)` → Save.
3. Wait a minute or two; the page appears at the URL above.

## Roadmap

- Verdict storage in a shared Google Sheet so checks sync across devices.
- Scheduled crawler (GitHub Actions) that reads the source list, pulls new events, and ranks them.
