cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4591"
  sha256 arm:   "5a43470800d377276b963b7dacbc9b754d6341619a3c0b2a443c8ea6d6b29dc0",
         intel: "307c9f443328b7a880e8ba77c051327f839a9ca11a0fd48670e50acfe094fe23"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
