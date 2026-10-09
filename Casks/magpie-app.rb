cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1141"
  sha256 arm:   "a5c1c3c59c82f04d1338e7f82c9e7c64f5a726d7a7c7aec8fd9bfafd0abe6f4f",
         intel: "ba28b51587a1351b22e35efbd3957f957849ad9b9adc9aca3fe9695d547dc521"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
