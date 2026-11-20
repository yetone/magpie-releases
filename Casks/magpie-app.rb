cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4574"
  sha256 arm:   "7ea65d935e0a5f8dd2371b0d7476bcc4979acc5256d8808cb856c92251fc08bf",
         intel: "9d5d36844e0d37d139b4044e78bdad75efe72d836fb722e86af9faee539dfbe1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
