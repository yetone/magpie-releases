cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2825"
  sha256 arm:   "0e344b86a05a361f881532f24567f7a56ca630a70606010ec9933e3e687fe28e",
         intel: "0d3ae8580ae1cb166f4659003dd087647590f67806dc75562afcf5ed06d89a9d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
