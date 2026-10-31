cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2452"
  sha256 arm:   "b078453cf8281a30a86c0cd393c5ae334fcecf232836dbe102463a352c6cf4f0",
         intel: "26e4003ffb83f84c4a4fe1c81965d7400cfb4d27844b402813857b6c276c0ee2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
