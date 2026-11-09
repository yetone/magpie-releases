cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3430"
  sha256 arm:   "7143230663a7c49c4fdc8bb420480cb6ea2f2cce5508287b815ce3e7e93ce6c4",
         intel: "a54ec1355cacc82d903fc6a6e7e89811fe1c995470469d86f4b5de7193ac9a2a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
