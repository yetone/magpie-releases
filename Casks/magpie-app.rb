cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4733"
  sha256 arm:   "1cd1bd86b9632e14849caed03335ec12d7a37ee27a6cadd12120f10ce54468e4",
         intel: "789f9453dc0e34556b42a73e4a0d17258e0e014b9eb9141875b515915f8748a2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
