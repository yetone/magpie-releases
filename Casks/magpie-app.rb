cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3357"
  sha256 arm:   "2d939a73074a881f4cc0813646360b8bd197aedfa8038503a009723e924c4f74",
         intel: "d18fc7815dec0e88706b8204d4f8bd82f8ffda0ed68715b51f983334d7055403"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
