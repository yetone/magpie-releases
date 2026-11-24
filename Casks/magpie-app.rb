cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4735"
  sha256 arm:   "65c6d75adb1eb1436d252a36c9174d0c18e19d5972839c1b2eedd9f58c3b7269",
         intel: "9b41700494813d01538fa32283beb9f5bf3148285cb8cd8dae3b98d35fffafc5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
