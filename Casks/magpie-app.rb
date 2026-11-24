cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4746"
  sha256 arm:   "952f03624ad2caee125ed36a5743d81242f520a3c6b0bb3c281ad5c1548ee56d",
         intel: "7b760d3f6d4e7d0a0ec38b8f26074857aad56c570f0ffebdce6cb8cc06ec0146"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
