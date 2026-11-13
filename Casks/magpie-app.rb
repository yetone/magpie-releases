cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4008"
  sha256 arm:   "eae9fd063fd85e9f1b03f9c4c99e249c85ca1281d34d69747f02daa7d47ab31d",
         intel: "34bea3de8fce94d49d2bb6d91332edb66b1f695e6c7f7a2f5a631a814855e3a8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
