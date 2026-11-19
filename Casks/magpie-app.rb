cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4515"
  sha256 arm:   "ff4e404b57cbd85f763fb740baa5294ffc052ccd3a6bbd04454aa6dba5115911",
         intel: "38aacb3299f551dd726a9bc8e92883a3b4ce83db6385535a53ed3ffdee8426e5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
