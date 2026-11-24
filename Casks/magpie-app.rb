cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4740"
  sha256 arm:   "71b8e025e99ab15071fbc3b40f0fac33c6bcab64a40cff375961a9ec1cb6793c",
         intel: "bbce5fd695068ad3f10dade00f5fd9d3c3a17c17b6542a4befcafe4a49498733"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
