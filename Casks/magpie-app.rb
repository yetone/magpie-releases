cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4912"
  sha256 arm:   "3f41c35b82eab3c5b7736787f705b04147434dc6205fd9d1e0b77d980bdb5fae",
         intel: "2e76b8a04fb03ad01fd9a00494b7f9b59c3b3bd6f2e03476e256cf1db7e3baee"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
