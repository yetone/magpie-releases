cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1917"
  sha256 arm:   "34a2ae4b32299e88997aa21bc76888b1e3361dc7d5951a9b92e5215976d790cc",
         intel: "1efae01b99cc87e2136cb17b932b9b28de70a9e86336fb3a5b4149815fcb0014"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
