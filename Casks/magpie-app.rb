cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4565"
  sha256 arm:   "3d543a4730cf2d93f4b9f53b0e6aa0eb041d1b54e223440fcc6408c0f71c1ca2",
         intel: "2e063561efc7153100ba8f8c8c19f7cbb0642f61a0c7924b3c75b0476bdbce44"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
