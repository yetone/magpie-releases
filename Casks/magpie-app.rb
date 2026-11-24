cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4776"
  sha256 arm:   "d8bb36cb9bb77083c7c0e22745f539120dc69533ae299c30a05ac859fa20b227",
         intel: "afb8a741476fcd30dc12ed818b6ae3e434d5a8e9c1c4b936ac1f1af5170b807d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
