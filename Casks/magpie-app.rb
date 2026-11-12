cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3881"
  sha256 arm:   "a29ea30d2cba930b088d069f2b489d539056a587857c0b42045ace84c54549a2",
         intel: "3dfeffdc10f937e4dee17fd37020208e465210b7f0cd608141764e90da8dce7e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
