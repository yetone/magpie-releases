cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3867"
  sha256 arm:   "826d493513ed400b5f572cd0101f7bb25356fc8446195ce5fb1d676ba5f12374",
         intel: "75eb48e02773c530ecbc6b53df84ab777558c9ec8310243e6c3d6d6da97381ac"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
