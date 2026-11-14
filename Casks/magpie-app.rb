cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4140"
  sha256 arm:   "8dbf6c70b6a599e8f7c716be5db5841287b6aa9984412e739b022d3c930b3754",
         intel: "7a739fbed159f04d53000821d1d7534d55ad460f1e049d86e4a1cc19cba845d5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
