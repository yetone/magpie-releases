cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3172"
  sha256 arm:   "b338be2a261717fbcf36df7f8302cda4b6dfe63b8d55b5a2e7cc9e2e78529dca",
         intel: "dcd6b197044e145662e2d9b46691aec6baa1dd889e3636375eebf104b54b8bb1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
