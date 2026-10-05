cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1051"
  sha256 arm:   "e1aaca77578abf817f295aa407074d3065ea6d6c81e4da6d12c9f7b7639e9e6b",
         intel: "90ab58d0c4ef36b6c46431de9c556325306709eb7fa9eafd4a6320f4b733d520"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
