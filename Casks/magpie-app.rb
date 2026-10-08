cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1126"
  sha256 arm:   "b87845bcfcb29587afd715c4b740cdab15c933495531feec45b887f2fb02ad73",
         intel: "48064ceda8a9c21b7658c3731e1b7b77c8e8ff63af898c3b4164020495727035"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
