cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4270"
  sha256 arm:   "2f6ced003c1481c828b9216cfb9a88b587a5150481d16779b9e3b98966c05647",
         intel: "08f927b3dcf5e374931e2e909aab2da76da338a705ce303a8ffb3c95394a1154"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
