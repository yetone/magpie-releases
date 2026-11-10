cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3497"
  sha256 arm:   "9f8a31308987064097ed8c5a3320799844f9529772c6b2f82cc1a1112c069e8e",
         intel: "894ade2a79a90e08ecfaec6112b6929b9f7b34ff03ac55ff50234922808b46ca"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
