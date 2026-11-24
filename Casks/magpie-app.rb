cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4758"
  sha256 arm:   "e8a0dd678a907e5221e6a1d48653e95f9ac88b12f42b407d266532c487c09c60",
         intel: "dec1fd2793b43ec7a0c68d7b1f9aeaf28d1326a30cb271eddf30e3195ae4bcc5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
