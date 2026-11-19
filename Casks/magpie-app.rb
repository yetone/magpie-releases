cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4518"
  sha256 arm:   "7876b1760bb1eb41ef77a368509dec84c503493ac0f2dbe94cc8ff04c972896d",
         intel: "241c613ffb89763d202ef837b88a537e9bbcc8ba4249d93b4cc6a2fb3fa18e1c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
