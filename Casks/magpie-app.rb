cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1885"
  sha256 arm:   "cca0ee9462ce380130c632417361450370c7d699074bfc8b55798a8c57a3df95",
         intel: "2ae345d09f8a6f67e7362025e2e2bc9c7018bdf2bf1eb3b0e36e117a17a878ae"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
