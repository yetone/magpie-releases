cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2919"
  sha256 arm:   "8258958c0d0a6a290029a1204249391d742bb8ef6bdaa6115b4be1270bb1bf14",
         intel: "25d50daf9dd79c049e9523129ca0126c459349a9084d345a4752d51bb9f979de"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
