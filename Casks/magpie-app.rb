cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3149"
  sha256 arm:   "e3aa430821c066ed4d38cefd18cb338a2d2d89673652af04c6c519a7809f229a",
         intel: "11b6b73f112e04e4f8a603077ae1628bac9d87b0d0ab508a1325a066f6024496"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
