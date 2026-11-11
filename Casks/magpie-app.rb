cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3688"
  sha256 arm:   "e65957dadc38127eb84bc68955469c147b78e2c69943aca1d622cb421b86c26b",
         intel: "60f45dd50f0392d52f7e1e9e0e254d8526ffcffa1a580bb6e96a2af2c7b2ce3c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
