cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1857"
  sha256 arm:   "8f10ef484d2431aa9cf3345ff058bf74105812337c1f00ea1af293cd39cccc41",
         intel: "139e3ce97b786d0826d67e12aa3cdf858f4334d3e8f4cf7c57695bc6b6e982e4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
