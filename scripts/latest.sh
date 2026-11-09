#!/usr/bin/env bash
# Which release is Latest. GitHub gives the mark to whichever release was
# published last, and usemagpie.ai's /api/latest (the update feed and the
# downloads) serves Latest, so a release that went out after a newer one
# (a rerun of a failed mac job) took the mark from it: v0.1.1255 on 10-15,
# v0.1.1891 on 10-28, v0.1.3360 over 3362 on 11-09.
#
#   scripts/latest.sh newest REPO        the highest published vN.N.N tag
#   scripts/latest.sh is-newest REPO TAG true when TAG is at least as high
#                                        as every published release, else false
#   scripts/latest.sh mark REPO          gives REPO's highest published release
#                                        the mark, when another has it
#
# Drafts and prereleases are left out: neither can be Latest.
set -euo pipefail

newest() {
  # gh lists the newest 100 by date, far more than ever wait at once
  gh release list -R "$1" -L 100 --exclude-drafts --exclude-pre-releases --json tagName -q '.[].tagName' |
    { grep -E '^v[0-9]+(\.[0-9]+)*$' || true; } | sort -V | tail -1
}

case "${1:-}" in
newest)
  newest "$2"
  ;;
is-newest)
  top=$(newest "$2")
  if [ -z "$top" ] || [ "$(printf '%s\n%s\n' "$top" "$3" | sort -V | tail -1)" = "$3" ]; then
    echo true
  else
    echo false
  fi
  ;;
mark)
  top=$(newest "$2")
  [ -n "$top" ] || { echo "no published release in $2"; exit 0; }
  # a repo with no Latest answers 404
  now=$(gh api "repos/$2/releases/latest" -q .tag_name 2>/dev/null || true)
  if [ "$now" = "$top" ]; then
    echo "$top is Latest in $2"
  else
    echo "Latest in $2 was ${now:-none}: giving the mark to $top"
    gh release edit "$top" -R "$2" --latest >/dev/null
  fi
  ;;
*)
  echo "usage: $0 newest|is-newest|mark REPO [TAG]" >&2
  exit 2
  ;;
esac
