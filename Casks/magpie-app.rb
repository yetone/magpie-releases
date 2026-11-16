cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4303"
  sha256 arm:   "bd1662ff745d2ce405f7fa0badc8e52263b3190d3716d8fa7029752ed3c5d986",
         intel: "fd9b1107199768f66cadac718dd981cd0ab0d83656509cd03ede3e41d05438b2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
