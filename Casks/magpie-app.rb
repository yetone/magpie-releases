cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4826"
  sha256 arm:   "83a0da2b350c252868ff953bda1352b4689adc095c40147f1e1466d481cce225",
         intel: "cd46e66435a5b996ab71333405f212c43d31a0de6c2186c7068029f9b9810e55"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
