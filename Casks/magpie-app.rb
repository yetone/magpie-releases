cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4705"
  sha256 arm:   "8a6e0dd606c3b0d08a1d500dd2a9eb533121e6e3987d07c01685fa6790471f09",
         intel: "e850e80dae924517410bbc11aab4433ae4c0a845af0cbe801aaf68e2caaf8df7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
