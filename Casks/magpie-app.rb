cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3164"
  sha256 arm:   "3c27d46393b437a35450956fa22d0d50bec2438f9a4245434a96380d06f06291",
         intel: "c36a0cbcc38b17b1a762175c4d76e3103e095c8d72f616a2ea1290adcf7de8c0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
