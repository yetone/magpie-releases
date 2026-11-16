cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4330"
  sha256 arm:   "5e9b3b31ce43d8912ecb0553fde835ea3a8a4e4d4dc0e14493b9ed67827e8ee6",
         intel: "da8dc32bee63d4b115716ce03b17ac7f33dfb0b60035409b57df2413c88e9814"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
