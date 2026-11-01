cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2652"
  sha256 arm:   "8793b53f9f7c2510b40537d31bf18f586baa44df9443ae47724eba440557d9ca",
         intel: "76e72036ce19aa1ba9ce2c2e679c19e21a9fcbf703083f876211629a0e532e33"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
