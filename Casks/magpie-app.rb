cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3814"
  sha256 arm:   "b391a14bfc2a5fa57bb731fd665836946638753cd4c80bb79d6e49931ea4dc69",
         intel: "948319a1d396e21b5a60472d3a737c6e508dbba99b283cdb7d3882f0a1db7b69"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
