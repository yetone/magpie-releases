cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3918"
  sha256 arm:   "d463ce7166ca662ce4bb3d2e0368bde1d11ca081f6f1e0304a46d5bfe12b0685",
         intel: "2ffc74e3016663974e96fbf3ce194e47f9c2478245b5d662bbc41a7c06ab0f47"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
