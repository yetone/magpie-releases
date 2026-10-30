cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2181"
  sha256 arm:   "01965493f64416dc4ed87224c909956cb9369359be03b2a404eb38eaaba865df",
         intel: "e333d747363c5abf96bd9150da349333e0f818dfb461d073bc7880a27804dc52"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
