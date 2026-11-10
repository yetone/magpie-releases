cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3554"
  sha256 arm:   "94953682645ac4bac85f7eb7027af30c003d80f0b531854ddf19db13a8d4f9c5",
         intel: "24ff5e6a812b052c094c74e18ae767313fac491c01893921ae151d57e7f706d6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
