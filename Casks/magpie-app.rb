cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2022"
  sha256 arm:   "cb8068e176f8a18ce2f25456f30d77659cb993fd8b204700cc93d50a44902791",
         intel: "83a5c074e2fee4c389fa12c82c1f34ff773c89c3e6472221d692ab33ff8c52d7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
