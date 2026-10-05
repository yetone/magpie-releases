cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1024"
  sha256 arm:   "d61232e842dcba224b927b8ed83acba86e2aac2ec056ec60e84b0afe3d1d4ef1",
         intel: "93c068dcba3c5e280711ac838e198c739ebd77aefd54b46db61ed1f7dd16ef6e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
