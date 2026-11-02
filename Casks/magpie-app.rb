cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2766"
  sha256 arm:   "3bc512485a8607d2e1c96e67dfa4a914a0e52e9f0d7f72b7391a96c12d19c1a3",
         intel: "9d86e1da015af7d3066d25fffa1b35563ffc1e030d1dc52553fa2001a7b0cc2e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
