cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4877"
  sha256 arm:   "084e1a7a50f81fe5f2c40869023c42fbdcbb7dfb936225777c6cb52d97c60a61",
         intel: "6b8dcb68ee9e3c9c9967944c36507305dee665215b1b3968e459fe0d199ffce3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
