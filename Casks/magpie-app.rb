cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4582"
  sha256 arm:   "31f784c68f34d7b811120218708de019c3bc3d77bc5ffa6ada20ea410452e2f5",
         intel: "ec44d2f6ab24fbf8492af68900301f068693c34cf308e6906b52271639152060"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
