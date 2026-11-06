cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3152"
  sha256 arm:   "5479292bf01094019ac0174eda9c1d6d23833dd167029bf2804878ade090329e",
         intel: "83effd2884cd5202e5f3666b2f34eb49f6f51345248df2eeae097cd16a88bcfe"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
