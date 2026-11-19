cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4553"
  sha256 arm:   "9f27901564852f8f537dc258d259f11ea20d2d36c26da0b7d81c010bc43cd670",
         intel: "37898fcfd615d9901c6f3777547556318fd1782e1dd831490adf128d4f7ab839"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
