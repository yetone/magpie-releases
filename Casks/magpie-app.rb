cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3964"
  sha256 arm:   "31eccdff4f46e7b4206d080c27290de07867aa8153e6cea35ba33e62ccba529c",
         intel: "f4c96395f1e6bf3c829533ed07bfe6c4879784439f94684e93aa9d5d771c6467"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
