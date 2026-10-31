cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2297"
  sha256 arm:   "017d73a26dce9c31b461fa45f09b3982bc05c01261ab0513fed1845477078359",
         intel: "3858985404d0a287c47650cd48aa88c7e61fc6b5bd32f0688de3076559b3d5a2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
