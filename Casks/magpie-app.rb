cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4108"
  sha256 arm:   "893c699aec92823839bf00988d23e21a8a79e83252490e178d15552e8d51e314",
         intel: "f621b470db2ca0b941f695cc3d42e755b87e60ba0a5aff7f2e01f1f81c341ac1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
