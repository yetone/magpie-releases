cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4837"
  sha256 arm:   "6e76223a5562f86a47f4616d80a4b8f12a0f0f10955b1636352c3a769ac0b0b1",
         intel: "8219ff90f1cdf17a360ccb8e2055a85faa750be2d10e0e3bd5f3338cbb04fae5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
