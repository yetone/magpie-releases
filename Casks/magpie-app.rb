cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2351"
  sha256 arm:   "4f80d90193f01406d16502c17d372d86ea8341e4389694852fecfad91f8c26d0",
         intel: "b81c188cd0b3cd8e17409e9ec3a5db851d1d3fafaa65d788f774199f8fe2083f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
