cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2784"
  sha256 arm:   "d407e12ee051b295539452fa6e72a00821c67baca047cf1f78d33aac74d6db10",
         intel: "00743f15aaa573113bd79ce33d39d05a0df45054a32c74ff6f5c8f7dbabc935a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
