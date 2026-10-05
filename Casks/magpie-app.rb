cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.984"
  sha256 arm:   "14396fd1d9a6d775c32dc6d1f458e01760f2f269c77f537f614fb03581895569",
         intel: "9e06cc1ea850bfadd0af12c03ff28e4901933da04162f19abac3e56e839f3f35"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
