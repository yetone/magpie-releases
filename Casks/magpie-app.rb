cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2641"
  sha256 arm:   "a3c858091065eb1cf0f5b037bbce2fe454db55b68dda2d25f03b8304c0a1752d",
         intel: "9fe8442a8875d8a1473a27e3dca4dfce9756f3b33a8e57e454c9c3d390263bc3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
