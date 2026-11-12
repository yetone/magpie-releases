cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3874"
  sha256 arm:   "2a3cdfdab8495616fa34a8db1d441d681dcd45f8fdc6865b9840ce7d66bdb19e",
         intel: "5927406703ce5c7029ff2b2a0088459198f376ede490075f2edf06f58c3e120e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
