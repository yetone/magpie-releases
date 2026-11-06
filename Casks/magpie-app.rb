cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3190"
  sha256 arm:   "fd8f2a548566ef2acb4fadc838d3830634ed46b2d56a967d19936dc387add3b5",
         intel: "01660541f8f3ab4c87e7be157a019c7df25041c3c6bf4017a962f907b8088602"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
