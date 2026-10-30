cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2270"
  sha256 arm:   "48143573143d5cca4b4eb9dacd47336733ac3e1d6a2f95b6815b0d395128bd32",
         intel: "96cc3c40e1b896dbe85f3c898b3295e5300ca6f6f0356eb369e2379433065cfe"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
