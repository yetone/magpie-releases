cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1011"
  sha256 arm:   "8f4f986a781a6aaf72d904afa8bf96bfc798da83f04fca527248c872ed4e2aa2",
         intel: "41831f37532c4a2de9fd8df11b1d05fdf7cb2e9a078dcf93e4dac52ae2751590"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
