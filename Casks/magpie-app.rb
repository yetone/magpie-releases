cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2823"
  sha256 arm:   "9c33e81b6fe6a0097aa05fe303b75b2f1c40230a1cd03730e8469e1833b3cb03",
         intel: "8d76c7e783d66331d68513eace0c6ae8da2095d2c8d2031378716d5075e26d5d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
