cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3853"
  sha256 arm:   "c56478c31b50e0840d66607b48609fdcc964153e8af03fc9395eee8fd0d5f046",
         intel: "12df0b9eb288519b399521b3fd52c8303cc7b206cce7fcd6a78da619ca9b1dd2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
