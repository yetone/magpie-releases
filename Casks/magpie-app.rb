cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2488"
  sha256 arm:   "d5dcb3d4a618eb14c45b6fb50e9d717b4ce11c442963d710915f86915951dae6",
         intel: "bd308ddb7288bb1a72be9b6cb6f078070125cba01a57b221c4133e0de40e4e6d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
