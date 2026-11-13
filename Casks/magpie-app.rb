cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4018"
  sha256 arm:   "6560326e00c6ee5567067dfa0bf5be2efa13fe85b0e13acba830d9861920b2e6",
         intel: "011218c2689f12b0c3918ca315b500b28a240a5a9b725d04b5feb1208e9df789"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
