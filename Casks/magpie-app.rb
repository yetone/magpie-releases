cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3565"
  sha256 arm:   "5a2849fa9ff8e37f4ed2ec2fbd33331c5a6e0149eeee4fe03a05cd697ccf5023",
         intel: "210173be187a677070660f2e1912deb202fb3a053bef0b1b5bb6b737e73edfde"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
