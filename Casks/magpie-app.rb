cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1041"
  sha256 arm:   "b2922545baf61066bff41f0a063a3a0e84f17c20eeac0f130c82f2b27428b72e",
         intel: "65ffa044d3eaaf12755ca7158883243b62b6116537a7a29e404e1eb3c835deac"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
