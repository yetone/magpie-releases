cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2659"
  sha256 arm:   "8a42fae9550575e517393ee725614cc33e7e7205afbd07225e8e816444e810e0",
         intel: "5bebfc2b2a75055482684901f3035dead29c3dac7466b8d6d2acfc8cdc4c7eef"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
