cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4686"
  sha256 arm:   "5ef30ce20e048f81509b50c15350ec236c61494449db62848e6776efdb7d6033",
         intel: "246c0794137656e3a8085598ac10ec5ba1a85f0f10f6f90c4274e15d949e1d5c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
