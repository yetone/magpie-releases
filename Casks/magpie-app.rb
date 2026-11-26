cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4859"
  sha256 arm:   "8d1099bad939c217cfc546edd971fb9ee41c05bd1e70616201b5c3add90211e2",
         intel: "deec922e27e23addb2ea87bed98e6c956f6d6f22b2fbfe2ef76444f97402267f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
