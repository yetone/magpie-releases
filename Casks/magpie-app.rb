cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3422"
  sha256 arm:   "222cd57b5d95381781bf698bb674495ad6e2977d8668d81cad7cdab7cb9e06c8",
         intel: "e883a6d8e9f76de9da758718070823d9c67d848e9dc8dcdb73c84f2b379c6bd8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
