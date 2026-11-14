cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4157"
  sha256 arm:   "0e2660564af6c2ebebc1e449d6d9ef2c3f09492bc2e4054b071cb4e1d1f2eef8",
         intel: "4ed821abd45142d7ad20edb92fd9e366c7a3ca0fc0661badfe5e70ed098d03bd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
