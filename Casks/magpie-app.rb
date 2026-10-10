cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1167"
  sha256 arm:   "30a9b4240dfb96aa467cfbf3d7f2f834bc1f9fd9175de1231732aa12598518be",
         intel: "cb804151e771cb8fd4eb413a57a66233cce0219c97b0f66ff6b3a88fb667e419"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
