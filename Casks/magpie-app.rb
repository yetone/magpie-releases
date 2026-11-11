cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3734"
  sha256 arm:   "07d9acfe9d07aa81e97d5b7d90228734cb11a97e5d75a738dd6257ec08e256da",
         intel: "35347e3cdc229cebac9eaf5a7788a2ea9ce1a20c96fc0259b734d7ae75f96d67"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
