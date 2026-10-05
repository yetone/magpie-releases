cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1015"
  sha256 arm:   "700c7e2776c6fe0fecf19f0544c8768114d121a9b2fc57b1a6308005d9d12d91",
         intel: "d8cb2bcc8356ff3ae2d6eeadd41a54430d0e3f301b72241ad5745293e3696b70"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
