cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2176"
  sha256 arm:   "d0779a339801a0917166cfdbfb34a272b452b65825763b5a5d6c598b9a5689f7",
         intel: "de2fafea4b487daecc867a608fa05a9206a97e94d3845c09b0ed05bfb7efe0e7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
