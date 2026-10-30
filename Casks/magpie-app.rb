cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2156"
  sha256 arm:   "675795744a1aadb08a8e6fa9ebbf297285292e3c806c25355afaa3c7ea27a8cd",
         intel: "66e95559b2159f631dae62d71f7b5c88496dc8a2f770a56a7ac8a75d5f1e1ec0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
