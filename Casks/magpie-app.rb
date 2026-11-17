cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4394"
  sha256 arm:   "1caccb4a21c8b9c8899306294d621d35663208b5758bc69b0aa23a3619b82492",
         intel: "8375684163113039afdfe97c4be139f79d7501675f105e671aa8a910690ab7a9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
