cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4363"
  sha256 arm:   "80bf82d612ad8049bfca24f1bc1af88ffbb5a59f62e733d008e54b0df291d81e",
         intel: "63345d4ab1f04bf90a83a57a06155816ee2f48512c520cfeca4e0dd58c149846"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
