cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4804"
  sha256 arm:   "490c43748d63eba0580a926d76375a4ee0a167f723d65ef908a806380c7bb9a9",
         intel: "db90337b6d07c033da7ba5cbe98a3af0d63fb1aa0551a2c2b7328748c5d68e9a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
