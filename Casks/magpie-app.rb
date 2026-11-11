cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3722"
  sha256 arm:   "0f3a5dcb234ae8e4362e3f3fa287dae449e6ed5752950b3bedc87d9386f8755f",
         intel: "9d76cb22034f45a24a73b8ce5bdee575c8b2dae807c32ea0ff672db437438241"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
