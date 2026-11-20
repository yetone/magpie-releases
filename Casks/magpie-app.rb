cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4587"
  sha256 arm:   "81515b86cbabfe15f4591facb44cec55ac77c0e96a7ac80d436b131df8d88289",
         intel: "14766d183d6a3283a094d71cfcb96e71ef326c94ce9c918708daf0fa59e5966e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
