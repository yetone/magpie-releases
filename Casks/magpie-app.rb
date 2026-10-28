cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1920"
  sha256 arm:   "7d17c5b150f1dc485c40aa79b87cab175b82413d17b1f65d5d4fa9378eeb3ab7",
         intel: "051ecd57cdd65b8f972519d5a3e9a84e1f8b56887c63ed0f1dadf4f3e64f4cbd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
