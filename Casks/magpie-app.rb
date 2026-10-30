cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2125"
  sha256 arm:   "0b347d48876b1b5d8e49eb4a2af188786dc6e9ea375ae57f17619470154830da",
         intel: "79bfa0088ace75149e42ee73251929b4bc5c175cda66e8affbd54b15a7610186"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
