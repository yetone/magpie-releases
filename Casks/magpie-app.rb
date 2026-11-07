cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3238"
  sha256 arm:   "47819453559e89fe7686b13c246850b63b862d7462c37a2f46145efa923ad1af",
         intel: "87271b735b4dfd6cfa3612b219d6997d8acff7ad83778c5f9f4954f209a8df67"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
