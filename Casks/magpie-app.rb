cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5015"
  sha256 arm:   "9741929365e2034527eb463b4dbdcf2585a9fecf43fa765be18c9fe8a104de61",
         intel: "550b1a1e73987b250618d8a119050a42c65c8f1d4fed30c37e88ec7326d2b0ab"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
