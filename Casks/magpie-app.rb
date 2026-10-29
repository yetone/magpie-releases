cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2015"
  sha256 arm:   "ceeaa15eb2a4de4b28723c375ed6752a6449c2a89032c173ca0db476ce68ef5e",
         intel: "ae27bcd17bef10f5dd5352ed3ba3922231a38dd8ab5ab6337a3a2641a535409b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
