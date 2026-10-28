cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1956"
  sha256 arm:   "2f649359144eeb47449c8d589e3facd92f56fde63f4c138701dc9af1ab34cf3e",
         intel: "2b5cf15bdb096b178e0e51e7589603cdaf78fd1b4e18ec3b32a4fd52f05c5ad2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
