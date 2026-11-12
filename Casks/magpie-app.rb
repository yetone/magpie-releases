cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3957"
  sha256 arm:   "085daedf3400fb2069889a8faad1155e1ab85682c5821efe66a08ca0fdfdb38d",
         intel: "f324917b6b303cc4eda6bbb3c0cb891ff73854d6e8bac3300b651208d43f21eb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
