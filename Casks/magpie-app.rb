cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4039"
  sha256 arm:   "19c9ff13ebe0fa07b519d35019c8ea69e9a80dff09f61712db803024a3a870aa",
         intel: "35e55da4cd66da0df7a45914c036202979b1ee1765439c6f64052f98c9054208"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
