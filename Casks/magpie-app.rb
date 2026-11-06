cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3103"
  sha256 arm:   "f5ec79fbedc7e58d8d4907d3ac2b08d2e5571c6b6566d6804ab47fd22d2b9e06",
         intel: "ed75312a1116d94e826ab01714cb5420684232193c6ba38f50bc84dce4613800"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
