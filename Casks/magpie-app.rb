cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1949"
  sha256 arm:   "6a434228792a6b2f762298d45d41711ad19b9750866fea82854efe024089afd9",
         intel: "b53d3ec95902b881d574ec2443418855698044ce477d9bbf11b053a16f3089db"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
