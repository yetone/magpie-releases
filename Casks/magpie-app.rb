cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2107"
  sha256 arm:   "c9e020e267d024ddec7af01ca393c4fc8e5d41954bd31252efcb1558e6a02cb8",
         intel: "e99ad4d8b6f7adc517cb8da145b928fb6df54d5c3a04a159a687c8d09f447de7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
