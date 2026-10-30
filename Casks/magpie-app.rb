cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2276"
  sha256 arm:   "d79d14fc0cecc9e907d87db052b19eeb10be6f2d40446de8dd5428440de88b7c",
         intel: "e7e18b4cc9a6460ac81d71b8005215e4d7aa9062f653a716075d13b012615cda"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
