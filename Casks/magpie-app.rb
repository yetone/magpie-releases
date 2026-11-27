cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4982"
  sha256 arm:   "8d782b6236866e84bc7bc2dbc100ca1a01d2a93c468e1fd6c983876e1d8c2632",
         intel: "0dfec23d08eb8b5cada67d638932a48718d72eddb151cc7ff3a9085589375a3c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
