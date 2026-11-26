cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4833"
  sha256 arm:   "87d11f387af64157173788ab9fdb857bfbfe956aff51e31944bdf9ed13111e62",
         intel: "e0ab7bdd03e52a046f3412b8aab2462dfcb640ef233f1bfc6566c3e8dd715352"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
