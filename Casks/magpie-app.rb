cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2529"
  sha256 arm:   "99f74ec7aceff547fcbfda487ca0b47bedc1ec02783ef202f63d2de3d57737e1",
         intel: "5cac7a56e3223f802343ec6cde70c2e4db849807c0c983deb680c188135e16da"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
