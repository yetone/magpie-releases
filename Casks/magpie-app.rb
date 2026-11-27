cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4958"
  sha256 arm:   "a843aa5832d1c4a3322e378ba1834b47ab781b9fddc3bd6d8dc13f8f2e33d97e",
         intel: "d1bf1e2307e493bb2d5262659c4f39ec2d84cd4276f344bb4ab590527d37846c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
