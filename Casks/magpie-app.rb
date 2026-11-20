cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4588"
  sha256 arm:   "0a2d2ee31f8ab26a4e13bf6db93849d17287138821f8b31bdddb0bb19f517bdc",
         intel: "26c949c5b3f36c4529792454c0ef188ef5312c4fe1f42802f35ebb114c85e13d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
