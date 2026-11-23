cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4713"
  sha256 arm:   "4de04634505a394199a7cfda14402d3abd2cac9667d79418035f39044056d633",
         intel: "4ddd73fd0a37a78df0733b921b2b41dc4d46f0c5934f5e243285a7d289110da3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
