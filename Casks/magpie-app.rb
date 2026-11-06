cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3203"
  sha256 arm:   "5b06b67053512c73985e251756cebfe17aeb0ee32c69ab79c6510dd09b9dabd7",
         intel: "3a107142fca3a8017e476d8b430053a672d77fed690d5cab60bcc76c5fd3ba49"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
