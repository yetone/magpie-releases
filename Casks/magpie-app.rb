cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4104"
  sha256 arm:   "9c46d8c3b321fd5ff6399edeaad2f1c12e14d52ce3994fe18f9281df8ea00a4d",
         intel: "ea5c9e384b6db4bc7254c5284bf531eacc184c308c5901721266e08e8d1ca94b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
