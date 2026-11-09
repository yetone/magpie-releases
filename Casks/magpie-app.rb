cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3390"
  sha256 arm:   "3666abe4b4e9790c0dde0030ae6f4166d95fc3809d480b7881e0b91a684f18ac",
         intel: "630fbe81dd65e5d670b7b15ad7a1a86895e2d75df9503b5e75ad18117c7211f8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
