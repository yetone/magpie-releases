cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4700"
  sha256 arm:   "f69e653d816007a76d4d65de1bae6f4ac7234673c15ab971813504dffbb1a19e",
         intel: "6424e148efea32b5ea1acea53d69f1b55f9eea159f4cf83d56c8e235e58f39bb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
