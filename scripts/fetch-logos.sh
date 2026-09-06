#!/usr/bin/env bash
# Downloads each source's own logo into data/logos/.
# Run from the repo root:  bash scripts/fetch-logos.sh
set -u
cd "$(dirname "$0")/.." || exit 1
mkdir -p data/logos
ok=0; fail=0
while IFS=$'\t' read -r name url; do
  [[ -z "${name:-}" || "$name" == \#* ]] && continue
  ext="${url##*.}"; ext="${ext%%\?*}"
  case "$ext" in svg|png|jpg|jpeg|webp|ico) ;; *) ext="png" ;; esac
  out="data/logos/${name}.${ext}"
  if curl -fsSL --max-time 20 -A "Mozilla/5.0" "$url" -o "$out" && [ -s "$out" ]; then
    echo "  ok    $out"; ok=$((ok+1))
  else
    rm -f "$out"; echo "  FAIL  $name  <- $url"; fail=$((fail+1))
  fi
done < scripts/logo-sources.tsv
echo "Downloaded $ok, failed $fail. Files are in data/logos/."
