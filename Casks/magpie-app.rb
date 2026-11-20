cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4616"
  sha256 arm:   "9f8222d408b2e028e3b6af5cfb7e773ed8649275c4a5eee8740c77967d8fa406",
         intel: "8f22b3662226f5fb984c3c585e0cc8464a9de543a103e26e7882d51bbce2593c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
