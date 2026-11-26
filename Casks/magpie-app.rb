cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4905"
  sha256 arm:   "9d6fb3aa6c07fc1c00237b6aaa577d5d1f72d35b5c787dded00f2d2c665e8490",
         intel: "2017a2851a79512df0ccb2f9aecc49bcf46b937f2f20fed31c9c777f4585a8c2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
