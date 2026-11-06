cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3098"
  sha256 arm:   "b16e11fd50574427010f45132d66989abe4f82d85b74bd934df385a9965fd522",
         intel: "0e10ee9d9860ad668acd3dcfd17aa206f93baf0cd81751867647f4e9d8c4dc4f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
