cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3007"
  sha256 arm:   "03c2fc5074546c1841d8457098ccf7db998409c767a50d2f4f0834c85790ec73",
         intel: "ca09d4496607f7c52691e77601a540bad651aff382f23f79bc61c724689b8b4f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
