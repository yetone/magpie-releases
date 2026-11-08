cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3325"
  sha256 arm:   "6d383736672b9454daaaba349bd9ca8eed531f7b72f33209408a77c296c3e353",
         intel: "bc91827f249ec2e15f5541296801b668d7c37e63335d86d776c821356afb51cc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
