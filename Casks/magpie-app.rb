cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2335"
  sha256 arm:   "1decad4f9c9b2b6cd6aecfee7e10b46ca50d76da312b6c53b96826cb5be5f4ae",
         intel: "9992f359f20d61d43f4fda0a9bb60d6baa204ba38d34f19d7b32fabcddf3fd18"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
