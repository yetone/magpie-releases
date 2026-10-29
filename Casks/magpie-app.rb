cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2065"
  sha256 arm:   "0a1527651c4ac3f8683f1ce2db79ff9d18917a6f9bfe296fd1b251b71d1b2bda",
         intel: "b0c8543c1fe7d60a80c129971b67b710216d049e8482b91191279b67e11fff09"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
