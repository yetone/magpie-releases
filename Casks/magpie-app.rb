cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4788"
  sha256 arm:   "c2ed37df9739795d114e576ffb3541393d1df5a86f2371388db10805c31518ef",
         intel: "23b5a229087c4c362e821709fe9a4c4d332d226296a3c0961f39f8a372d6841d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
