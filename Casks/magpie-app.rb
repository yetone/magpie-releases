cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3509"
  sha256 arm:   "89adfb974a38816eee44bb22d4d832b018de0f605705f75e3e36944dc8fa3f38",
         intel: "5b6b80bb2c0a4dda668a734b08f1245283e272bb89480fd3663e39a36ad1e44c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
