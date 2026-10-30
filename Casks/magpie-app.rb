cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2196"
  sha256 arm:   "abbd10f07952e179aef57c0cba52e98994b75e478cd584679338d8e58b9da418",
         intel: "917d8fb1a9ce5832ad23457b1dd6617756ba54f0ed7ffb53cf15717968eb6840"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
