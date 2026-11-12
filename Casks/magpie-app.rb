cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3954"
  sha256 arm:   "14963f0dc3de4d40dd8d47fa718203a4d181c256e1b031b57666ec5fd9f31327",
         intel: "d067f309f8f27a40fabc0bb7656beafc2daf6a9a204b09295c5abbcbe7ccc02f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
