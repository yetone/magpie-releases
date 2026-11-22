cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4665"
  sha256 arm:   "445a430e10d57a3ab3842136dc9e0163ee702345bb6c228e906fed04afe50e4f",
         intel: "4a5194fa605f37811ef2569e97d0a12634c20c24198870e6cc224603b20c4490"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
