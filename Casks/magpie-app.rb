cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4170"
  sha256 arm:   "8cfbbdcba7c9b8b671d9d03952676604595ad82ac0ca0c28ecfcd0655e710eaf",
         intel: "c63e10216c37ff7587070e20e42d84ea49f6f3965f2888e57060b73a6eeaa620"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
