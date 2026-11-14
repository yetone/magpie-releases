cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4194"
  sha256 arm:   "22680df68efc54ccab836ad4673335213ecf8aa91c6c3efb33372e1fc4079842",
         intel: "4c8ef20770aefa86150d133ee928f7301a8d7851e2a4f0e9e6ef0c99d484d851"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
