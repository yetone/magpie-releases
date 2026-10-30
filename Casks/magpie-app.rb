cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2170"
  sha256 arm:   "45cfb8a187d839a82a0c11eee6ba31150d48bd4b7d27a0979d4d38ab86230a2f",
         intel: "a134430a7ad8a2fb0441c76b9d56286a7cbdfbcb82587dcc277eb931806db4c9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
