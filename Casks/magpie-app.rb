cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3786"
  sha256 arm:   "c8538856ed152757511a8da100dd4198e82ea8d2e7400246d25d5426280e76ed",
         intel: "0139ac25a6dc0ec4e9b67b0136689d2c031a51ace44e371722d3a02227ebc33a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
