cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4192"
  sha256 arm:   "405896203eccbd90a13428d35db8cb7e59991afb272e6c56254e781c69eec732",
         intel: "90950cceb3bcb43f6db40964b0ea613760505a6ff95d81ab5b12bd052d229166"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
