cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3751"
  sha256 arm:   "2a51b49e1321d9c9e06414747db3b2b8db6d772417b26d3c0a0fe1bfee677c47",
         intel: "7ffff737811ae6116514fd40e04be0cc4782b4c38fe9e6d7ef7581cde9bbf036"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
