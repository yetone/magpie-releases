cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3440"
  sha256 arm:   "a50069cfa30c76b23e8ffbda062f3ac672fdf56f51f06afeeef93da21e83cc3c",
         intel: "70a5ae2df9ee527ffd87bcf60387dcdd51b8b690cc0bbaaced8424a3bac4d6ed"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
