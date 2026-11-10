cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3492"
  sha256 arm:   "16dfa03532aa9797dffb83e171f3b13bf4ddc7c0ebaff7ddc73c114db9f1a23e",
         intel: "7783229677deef829b01a35e33a29116770aff8e266df1884272b987fc3e46b7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
