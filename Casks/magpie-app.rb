cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4964"
  sha256 arm:   "154af81019d9990d04f7d86f3de1395e6c2d1625b71d6b6e153e7560ecc6e1b5",
         intel: "5bc9b5a9ced9013340825e9bc4ac1709b587050b8c52d62bcdce8bbfb32c15ab"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
