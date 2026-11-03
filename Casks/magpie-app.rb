cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2869"
  sha256 arm:   "fd4998d080ec97517b05c9609fb3aa02eec33f2b9610495a767b46c66948deb3",
         intel: "9fa575de20474973b339f64615f3be80959d52a4aa0b5068a0a0c6818e2208f2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
