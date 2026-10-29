cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2059"
  sha256 arm:   "0d5f675ca20b89d6fdf433fec805fd8973b6d4c11f5fea236fbce43b1363eda8",
         intel: "220444a7f2016ca90c5325036b2a7b41d5f871a12c7743dab9c134d9ee4ab3ce"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
