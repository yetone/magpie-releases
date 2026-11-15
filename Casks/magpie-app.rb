cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4253"
  sha256 arm:   "1635e55f3ce1f4dc854af926bca178ace978a5a8fb211763cbad5351b56ed2ab",
         intel: "9c413a9c60dfd97453acb8e1ecf78c4a71d3c1b7011986c2788bf67c2a3b3a96"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
