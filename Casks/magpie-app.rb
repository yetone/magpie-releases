cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2724"
  sha256 arm:   "2ec0d54b63055040955f671125d80766d3755c7b1cfc611c8e88af9114725362",
         intel: "3fc81c7e15845e3e660b08cd339d8e16dc3ed36353c3161a3dcb37f7c09f522f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
