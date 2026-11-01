cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2620"
  sha256 arm:   "6ac5ec8eb6fd5ad9632045b86a873de6fb8b6683c37ccee99357a187e2b8f20e",
         intel: "98b2eda974b11d8855472e4cdfbde65d77ada41ac39d425b6ddacb0ca7a079eb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
