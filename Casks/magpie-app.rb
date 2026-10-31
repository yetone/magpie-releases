cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2406"
  sha256 arm:   "b4f7c24409d4d13e171035e72c650e93fbe253e05e933a6a021e8aadf3ac6e86",
         intel: "9c296059e0d42615c57b2d8f1ddacb861aa07822c908dae060468187ee90ab41"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
