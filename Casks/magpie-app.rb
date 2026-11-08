cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3313"
  sha256 arm:   "c94335ea81c73d8ab2850132b94646fcf60b1669d74b08ed67d8e087a6eabc99",
         intel: "480c3957c3b1dcc374e0ff55369f1d961cf0f891914e412604751fd1be47be23"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
