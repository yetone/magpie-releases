cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1078"
  sha256 arm:   "64d2450dbd6bc874124029671f81996e36cda077727e8cf7b4320c12c7970f47",
         intel: "d40299e3615d5c780109f961d52f266186e7d0ce0243e7cdd6d11f79c0018c11"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
