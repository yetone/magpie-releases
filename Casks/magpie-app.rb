cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4782"
  sha256 arm:   "9e413ae3ad77ba36fe97dbee7eff15c4b23e89b228edb417e314cb1e5b2d9603",
         intel: "335cac0580a62d710f22c5290fd5c5b669e85a3fc080098b84d8e2068c562cd2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
