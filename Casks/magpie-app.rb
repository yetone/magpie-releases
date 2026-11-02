cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2707"
  sha256 arm:   "c420210bb6fa7085efff43dc9beedfa0b145e29277b9bba97aa8330ec96c57a4",
         intel: "eee88bd19a0a1e3bb54c9fe50f29b3f8e7798706f5329884d0a1ee0e5b6e26b9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
