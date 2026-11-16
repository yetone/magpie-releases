cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4341"
  sha256 arm:   "3e00b0ef3b32d597e0cf2fc36dca2702bc90ad82dae1e91e459cd878ecc80205",
         intel: "b6770161293c9b6af3809fdc941cb05ae9834378776bb0bb781b09cfaba37e62"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
