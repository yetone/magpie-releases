cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4594"
  sha256 arm:   "47b1012803cd8a3b51f69fe7132c7a4f9c69aa8f5eda789d4af5466d3f4339a9",
         intel: "b96cb7a66fc992d2ece74336f657f7e07e4ec1b820884f8e31a08b039e549ee8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
