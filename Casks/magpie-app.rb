cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2013"
  sha256 arm:   "8056f2f686e27dbbd7309990e419346b96923bff57b2f300527829a26854a45f",
         intel: "685ebf5cbee76af9d9a56c8a5162030bf0c86a76ae59d74237d88ac62920aa1f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
