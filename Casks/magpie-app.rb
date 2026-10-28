cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1844"
  sha256 arm:   "b217e20e3dc8c6ef3582ff049f72a8455be6ffb627e96b8d8b6fed3ba65d4541",
         intel: "00403e1f2b741b3e47d9e6b5c5a36d5d222d18670b6d076fd5df3a361d868647"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
