cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4983"
  sha256 arm:   "b81fe12ee946b4e920e7a8d9773bf796b3ba50d2217a21a0927c7595aa1cab2b",
         intel: "9763869dc1edd72bfa38386a53747cb4361bfa50ccb54efe96cba054704e0d64"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
