cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2598"
  sha256 arm:   "a0bcc774894952ffd92cbbfa155986a2a7772a29cd181889716951761f60839b",
         intel: "61da0bd731a44c4b1de0074fc829f8954f36f960a3f7701f9d0ef7b5c3075b07"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
