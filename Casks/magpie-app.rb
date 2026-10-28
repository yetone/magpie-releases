cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1898"
  sha256 arm:   "18cb03da44425d56b152eee7fa5fceb0331b3af0d9ba4d4aebb348f06b056be2",
         intel: "5c16f290719d86e2ac7b77ade3578803528b6b0348c6699e06ed483acb0cca65"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
