cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4348"
  sha256 arm:   "f339e9c4f14008b47a0246e34967f377d48cb74ce1cb64846fe17647e965a8b1",
         intel: "b11f79621748c91ab89a7d0adb38b6ed2c9d3b3e0e3dd12d449eb7f384392501"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
