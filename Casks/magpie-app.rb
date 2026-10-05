cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1016"
  sha256 arm:   "ab7beb189ebcbaec69657fc4bb07e20b6e01fea24c62e056d966195fe2af7cd3",
         intel: "21b59d11a38b351f335b650d07d3dd9b4962c80098f73f7153005ba9748eb620"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
