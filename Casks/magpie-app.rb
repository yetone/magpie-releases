cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4052"
  sha256 arm:   "addaec92f2f3030d849fb00132c5c629891283bbd8af2b2bf437fe03d331ef22",
         intel: "40753b1256353aafa62bcc92f72df86c7b37f7180d2d3133c4458e7c91bed5cd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
