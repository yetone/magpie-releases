cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1074"
  sha256 arm:   "66c74e2e2d990e2363a746f1e1367bec8b65b2c6d59645d55546233b80d05817",
         intel: "d7eeb74014b4d949151520d6da883c6e02b7d350c77220028252ba58de2a109f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
