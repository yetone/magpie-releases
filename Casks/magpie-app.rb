cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2280"
  sha256 arm:   "13d508b89a9cdb8bcf85ac27e238796a84ea4b6aaa99f377f913baa32fda39c7",
         intel: "b128abc2f3ab68dd2051f823037100dacc02b629d1e14cc64282d3b002b956cb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
