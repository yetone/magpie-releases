cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3689"
  sha256 arm:   "7333401fc18ac220ca860c7e44da5a2a00fbe6416b8449309ae83043d9526fd7",
         intel: "b5299cd5fbbc90a63044c1f6c28cecf39b1d2c11ab3bf854e34b8d16e52ecd93"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
