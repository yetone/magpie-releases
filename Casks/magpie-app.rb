cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2465"
  sha256 arm:   "db82ed963cc5debb2a910e101ddb011bc5c01322de4e4b2133751c6dc6a72401",
         intel: "6e6010ebfa9485d21c8d74543d01d8d6531e00e41e4cbbe9399d526f48df6160"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
