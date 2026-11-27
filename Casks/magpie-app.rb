cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4941"
  sha256 arm:   "f484a5f12a0adc540df14c254631dd688d8c2ab85c0dc8d114e64018d8679589",
         intel: "a6a5e1739aec1305a71ea40e347d8fd3a50bf5d27c71c2049e836e60477a4952"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
