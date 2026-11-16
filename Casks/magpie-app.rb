cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4313"
  sha256 arm:   "4dbe1df011716bd18b07115a9128632b22520e1db99c8a53402ac830d05f8ca0",
         intel: "6db6d1b806f5ed14c300d9354293eaaf736c3ffd1c6591041bf202b1fed188fd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
