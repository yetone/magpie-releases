cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3714"
  sha256 arm:   "9064bdf425574967afc4b6af4bee51c6e0aae8661a79e7bd1530a9982f19be70",
         intel: "d6e072711b386f7f59f51d94efe6975fc3f3041852f786688455e10d046615e0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
