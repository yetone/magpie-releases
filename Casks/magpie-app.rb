cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3457"
  sha256 arm:   "55473cb067ae49a3192f7fe2e43776c9a8bdb21f8bca39e6e33584fe0381ed62",
         intel: "65875bbb372d3ad5febca14ab1cc373274042c60ef94a3d1549729b92fcb313e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
