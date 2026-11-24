cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4777"
  sha256 arm:   "22b19bc89830c062d461642cdc446970c2a3a3d921f427de147a40eabf05245f",
         intel: "5c6dd6299c30da2537369615efc1988cb3ed25d1580897e511a66f7e23989dfc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
