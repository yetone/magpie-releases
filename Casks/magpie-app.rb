cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3870"
  sha256 arm:   "22ca06a6ac6de59e417e1185a17cfaac3635af8c0a61eb6481d2ba4c4a064787",
         intel: "7ebcd2f5d15a872bbc47109e019c92dc5b010def46d0bfcacf0abd133593cef2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
