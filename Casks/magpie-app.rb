cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4493"
  sha256 arm:   "5dea3d5b1610eaf24e8285b8e2251c2434601f9c79160248d7bcb0342d7ca1c3",
         intel: "a6bf6fc9befa4c1a74aa4af21d0d292391851c88154ae74658fb3e1bbc2c356a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
