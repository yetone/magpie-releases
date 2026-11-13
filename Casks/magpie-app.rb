cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4054"
  sha256 arm:   "b25a6c33ab17141ce27edaf5e22ef7e6341b39644e46a6d791d8a1b221badc8b",
         intel: "8eec85b26d8828fcadbd7fe6e217eb0688d212957b01f650a77c07663d38d1dd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
