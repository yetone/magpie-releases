cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2714"
  sha256 arm:   "9c927118201766832a14e6a053e8c9fec48fa76e87b7f9f739844c00737a099d",
         intel: "7fa6ffa2463443c100bac8fa634748194b78d479f9a94915fa521f0339282da7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
