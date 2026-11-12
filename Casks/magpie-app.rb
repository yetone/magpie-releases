cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3857"
  sha256 arm:   "42f830e0253c963aea1640a876583b563f737ce2a7f39766a9628b0f936e4106",
         intel: "fdb11c3f7bce229105597cb00f5dc238bdbd5d20c19b0a1cc595ff450c41ef9a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
