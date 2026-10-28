cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1903"
  sha256 arm:   "ef3cefc627fa10a86810fa0954a7c2d5b08485711bbabcee35841e6d532cfc58",
         intel: "7b313434dafe8ceb480de445b4f268e80f71af7fa22b25adc9d79e8b79cb8749"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
